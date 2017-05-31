#!/bin/bash

# (C) 2016 Daniel Williams
# MIT License


command_name=`echo $1 | tr '[:upper:]' '[:lower:]'`

PROCLINE=`ps auxc | grep mongod`
PID=` echo $PROCLINE | awk -F' ' '{print $2}'`

command_name=$1
if [ ! $command_name ]
then
  command_name='show'
fi

# # for debugging:
# echo "db:procln: $PROCLINE"
# echo "db:pid:    $PID"
# echo "db:cmd:    $command_name"

if [[ "$command_name" == "help" ]] || [[ "$command_name" == "usage" ]]
then
    echo "Usage: "
    echo "    mongo.sh [( help | start | show | list | reset | stop | kill )]"
    echo " "
elif [ "$command_name" == "start" ]
then
    if [[ ! $PROCLINE ]]
    then
        echo "starting MongoDB:"
        mongod --config /usr/local/etc/mongod.conf &
        echo "... proc id: " `ps auxc | grep mongod | awk -F' ' '{print $2}'`
    fi
elif [[ "$command_name" == "show" ]] || [[ "$command_name" == "list" ]]
then
    if [[ $PROCLINE ]]
    then
        echo "mongod process: " $PROCLINE
    else
       echo "No Mongo process found!"
    fi
elif [[ "$command_name" == "reset" ]]; then
  mongo 'mongodb://localhost:27017/tags' --eval "db.dropDatabase();"
elif [ "$command_name" == "stop" ]
then
    if [ "$PROCLINE" ] # ifdef
    then
        echo "gracefully stopping mongo."
        kill $PID
    else
        echo "No Mongo process found!"
    fi
elif [ "$command_name" == "kill" ]
then
    echo "KILL MONGO! (NYI)"
    kill -9 $PID
fi
