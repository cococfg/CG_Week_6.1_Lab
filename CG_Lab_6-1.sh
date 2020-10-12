#!/bin/bash

#### Header
# File: CG_Color.sh
# Brief Description: Lab 6.2 for CSI-230-01
# Author: Courtney Grimes
# Due Date: 10/12/2020

#### Constants
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
default='\033[0m'

#### Main

read -p "What is your favorite color (red, green, yellow, blue or magenta)? " color
color=${color^^}

case $color in
   RED) echo -e "$red"Your selected color is ${color}${default}"";;
   GREEN) echo -e "$green"Your selected color is ${color}${default}"";;
   YELLOW) echo -e "$yellow"Your selected color is ${color}${default}"";;
   BLUE) echo -e "$blue"Your selected color is ${color}${default}"";;
   MAGENTA) echo -e "$magenta"Your selected color is ${color}${default}"";;
   *) if [ -z  $color ]; then
        echo "Error: Nothing entered!"
        exit 1
      else 
        echo "Error: Invalid Selection!"
        exit 2
      fi
esac
