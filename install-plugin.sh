#!/bin/bash
#===============================================================================
#
#          FILE: setup.sh
# 
#         USAGE: ./setup.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: James Zhu (000), zhujian0805@gmail.com
#  ORGANIZATION: JZ
#       CREATED: 2015年05月04日 19时21分32秒 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

vim +PluginInstall +qall
vim +PluginClean +qall
