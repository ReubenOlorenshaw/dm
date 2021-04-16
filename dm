#!/bin/sh
#
# dm - D Minder -- A command-line tool to monitor Vitamin D levels

#
database="$HOME"/."$1"-dm.database
echo $database

echo "Existing Databases"
echo "------------------"
echo $(dir -l | grep 'm.database')

x="62"
echo $((x + 12))


# set benutzen, wenn keine Name angeben ist?

if [ ! -e $database ] 
  then
  echo "creating $database..."
  touch $database 
  echo "creation_date=\"$(date "+%a %d %b %R")\"" > $database
  echo "number=10" >> $database
  echo "done."
else
  echo "$database exists, let's echo out the variables:"
  . $database
  echo "$creation_date"
  echo $number
fi

echo "$database contains this text:"
echo "-----------------------------"
cat $database

