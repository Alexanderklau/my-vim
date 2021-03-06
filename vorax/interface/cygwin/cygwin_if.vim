" Description: Cygwin Interface for VoraX
" Mainainder: Alexandru Tică <alexandru.tica.at.gmail.com>
" License: Apache License 2.0

" no multiple loads allowed
if exists("g:cygwin_interface")
  finish
endif

" flag to signal this source was loaded
let g:cygwin_interface = 1

if has('win32unix')
  
  " the vorax ruby lib location
  let s:vrx_lib = expand('<sfile>:h:p') . '/vorax.rb'

  " a temporary file name for packing
  let s:temp_in = fnamemodify(tempname(), ':p:h') . '/vorax_in.sql'

  " the end marker
  let s:end_marker = '-- !vorax-end'
  
  "load ruby library
  exe 'ruby require "' . s:vrx_lib . '"'

  " define the interface object
  let s:interface = {'more' : 0, 'truncated' : 0, 'last_error' : "", 'connected_to' : ""}

  " the last read line
  let s:last_line = ""

  function Eof()
    return "\nprompt " . s:end_marker . "\n" .
         \ (g:vorax_update_title ? "prompt :&_USER@&_CONNECT_IDENTIFIER:\n" : "")
  endfunction

  function s:interface.startup() dict
    " startup the interface
    let self.last_error = ""
    let content = "host stty -echo\n"
    let content .= Eof()
    let execcmd = shellescape(self.pack(content))
    ruby $io = UnixPIO.new("sqlplus /nolog " + VIM::evaluate('execcmd')) rescue VIM::command("let self.last_error='" + $!.message.gsub(/'/, "''") + "'")
    " output is expected
    let self.more = 1
    " we don't want the above commands to be shown therefore
    " just consume the current output
    if self.last_error == ""
      let step = 1
      while step < 100
        call self.read()
        if !self.more || self.last_error != "" 
          break
        endif
        sleep 50m
        let step += 1
      endwhile
      if step == 100 && self.more
        " Give up after 100 retries
        let self.last_error = "Timeout on initializing interface."
      endif
    endif
    let s:last_line = ""
  endfunction

  function s:interface.send(command) dict
    let self.last_error = ""
    " send stuff to interface
    ruby $io.write(VIM::evaluate('a:command') + "\n") rescue VIM::command("let self.last_error='" + $!.message.gsub(/'/, "''") + "'")
    " signal that we might have output
    let self.more = 1
  endfunction

  function s:interface.cancel() dict
    " abort fetching data through the interface
    let self.more = 0
    " command line version of sqlplus doesn't support succesive
    " cancels of running statements. This is so sad... If you
    " have a running statement and press CTRL+C  once will work,
    " but on the second CTRL+C will simply kill the sqlplus
    " instance. That's the case just in Windows... Even it's a
    " huge drawback, the cancel operation is implemented quite
    " rude: kill running sqlplus process and start a new one.
    silent! ruby Process.kill(9, $io.pid)
    " return the status of the connection: 0 means it's not
    " safe to continue with this session and a reconnect must be
    " done; 1 means the session was successfully canceled and
    " it's safe to continue with this session.
    return 0
  endfunction

  function s:interface.read() dict
    " read output
    let output = []
    ruby << EOF
      begin
        if buffer = $io.read
          end_marker = VIM::evaluate('s:end_marker')
          end_pattern = Regexp.new(end_marker + '$')
          lines = buffer.gsub(/\r/, '').split(/\n/)
          lines.each_with_index do |line, i| 
            if VIM::evaluate('self.truncated') == 1
              last_line = VIM::evaluate('s:last_line') + line
            end
            if end_pattern.match(last_line) || end_pattern.match(line)
              VIM::command('let self.more = 0')
              remaining = ''
              remaining = lines[i+1..-1].join("\n") if i < lines.size
              # consume the output after the marker
              remaining += tail while (tail = $io.read).length > 0
              if remaining =~ /:([^@]*@[^:]*):$/
                VIM::command("let self.connected_to = '#{$~[1]}'")
              else
                VIM::command("let self.connected_to = '@'")
              end
              break
            else
              l = line.gsub(/'/, "''")
              VIM::command('let s:last_line = \'' + l + '\'')
              VIM::command('call add(output, \'' + l + '\')')
            end
          end
          if buffer[-1, 1] == "\n"
            VIM::command('let self.truncated = 0')
          else
            VIM::command('let self.truncated = 1')
          end
        end
      rescue
        VIM::command("let self.last_error='" + $!.message.gsub(/'/, "''") + "'")
      end
EOF
    return output
  endfunction

  function s:interface.pack(command) dict
    " remove trailing blanks from cmd
    let dbcommand = substitute(a:command, '\_s*\_$', '', 'g')
    " now, embed our command
    let content = dbcommand . "\n"
    " add the end marker
    let content .= Eof()
    " write everything into a nice sql file
    call writefile(split(content, '\n'), s:temp_in) 
    return '@' . self.convert_path(s:temp_in)
  endfunction

  function s:interface.convert_path(path) dict
    let path = system('cygpath -w ' . shellescape(a:path))
    if v:shell_error == 0
      let path = substitute(path, '\r\|\n', '', 'g')
    else
      let path = a:path
    endif
    return path
  endfunction

  function s:interface.mark_end() dict
    call self.send(Eof())
  endfunction

  function s:interface.shutdown() dict
    " shutdown the interface
    silent! ruby Process.kill(9, $io.pid) if $io
    ruby $io = nil
    " no garbage please: delete the temporary file, if any
    call delete(s:temp_in)
  endfunction

  " register the interface
  call Vorax_RegisterInterface(s:interface)

endif
