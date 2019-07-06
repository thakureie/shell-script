#!/bin/bash

#######################################################################################################

## This Script will find OS type of Linux/Unix Syste,m and let us know the result
#Owner thakur.eie@gmail.com
#Date : 6-July-2019
#Version : 1.0


#######################################################################################################

hostnam=`hostname -s`

type=`hostnamectl |grep 'Operating System'`

abc=`echo $type |egrep 'Ubuntu|Oracle'`


if  echo "$abc" |grep -q 'Ubuntu' ; then
Result1="System is Ubuntu"

elif  echo "$abc" |grep -q 'Oracle' ; then
Result1="System is Oracle Linux"

else
Result1="Check Manually"

fi

echo $hostnam : $Result1

