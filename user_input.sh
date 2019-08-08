#!/bin/bash
echo "What is your username?"
read uname
numgroups=$(groups $uname | wc -w)

user_id=$(id -u $uname)
user_group=$(groups $uname | cut -d" " -f3-${numgroups})
user_gid=$(id -G $uname)

#echo "UID: ${user_id} "
#echo "UGroup: ${user_group}"
#echo "GID: ${user_gid}"

numgroups=$(( numgroups-2 ))
iteration=1
echo "User Id: ${user_id}"
for field in $user_group
do
echo "Group ${iteration} (not gid): ${field}"
(( field++ ))
(( iteration++ ))
done

