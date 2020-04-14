#!/bin/bash - 
#===============================================================================
#
#          FILE: dep.sh
# 
#         USAGE: ./dep.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/13/2020 22:25
#      REVISION:  ---
#===============================================================================

 echo $1 | tr ' ' "\n" | sed "s/'-l//" | sed "s/',//" > list
for i in $(cat list); 
do 
    echo $i; 
    sudo apt -y install $(sudo apt search $i | grep xml2 | grep -v installed | grep -o "^[a-z].*/eoan "| sed 's/\/eoan//'); 
done


