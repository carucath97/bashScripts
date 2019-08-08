#!/bin/bash

#list the active processes in current directory
echo "Here are the active processes in this directory"
ps -a

echo "insert a process id (PID) to kill"
read process_id

kill $process_id
echo "${process_id} killed"
