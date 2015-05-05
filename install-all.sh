#!/bin/bash
#===============================================================================
#
#          FILE: install-all.sh
# 
#         USAGE: ./install-all.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: James Zhu (000), zhujian0805@gmail.com
#  ORGANIZATION: JZ
#       CREATED: 2015年04月15日 21时27分14秒 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

sudo apt-get install python-pip git

pip install --user git+git://github.com/Lokaltog/powerline

cat <<EOF >> ~/.profile
if [ -d "$HOME/.local/bin" ]; then
        PATH="$HOME/.local/bin:$PATH"
fi
EOF


wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
