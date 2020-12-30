#!/bin/bash
#
#   This file echoes a bunch of color codes to the 
#   terminal to demonstrate what's available.  Each 
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a 
#   test use of that color on all nine background 
#   colors (default + 8 escapes).
#
#   Author: Giles Orr
#   URL: http://gilesorr.com/bashprompt/howto/c350.html
#   License: GNU Free Documentation License, Version 1.1 or any later version published by the Free Software Foundation;
#            http://gilesorr.com/bashprompt/howto/a1004.html


T='gYw'   # The test text

echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo

echo -e "\e[0mCOLOR_NC (No color)"
echo -e "\e[1;37mCOLOR_WHITE\t\e[0;30mCOLOR_BLACK"
echo -e "\e[0;34mCOLOR_BLUE\t\e[1;34mCOLOR_LIGHT_BLUE"
echo -e "\e[0;32mCOLOR_GREEN\t\e[1;32mCOLOR_LIGHT_GREEN"
echo -e "\e[0;36mCOLOR_CYAN\t\e[1;36mCOLOR_LIGHT_CYAN"
echo -e "\e[0;31mCOLOR_RED\t\e[1;31mCOLOR_LIGHT_RED"
echo -e "\e[0;35mCOLOR_PURPLE\t\e[1;35mCOLOR_LIGHT_PURPLE"
echo -e "\e[0;33mCOLOR_YELLOW\t\e[1;33mCOLOR_LIGHT_YELLOW"
echo -e "\e[1;30mCOLOR_GRAY\t\e[0;37mCOLOR_LIGHT_GRAY"

# !@#$%^&*()-=><_+[]{}\|;:'"/?.,`~
