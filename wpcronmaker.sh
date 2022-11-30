#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
UYel='\e[4;33m';

web_root_full_path=$(pwd)
tmp=$(echo ${web_root_full_path%/*})
wp_path=$(which wp)

if [ ! -d wp-includes ]
then
  echo -e $RED"Needs to be ran in the root of the WP install."$ENDCOLOR
  exit
fi



echo -e "\n"
echo -e $UYel"WP-CRON for this application is"$ENDCOLOR
echo -e "\n"
echo "* * * * * cd $web_root_full_path && $wp_path cron event run --due-now  >> $tmp/tmp/wp_cron.log"
echo -e "\n"
