#!/bin/bash

if [[ `whoami` != "root" ]]
then
	printf "This script must be executed as root.\n"
	exit 1
fi

user=<user name>
server=<server name>
pkg_dir=<path to package cache on server>
local_dir=/var/cache/pacman/pkg/

mount | grep "$server:$pkg_dir on $local_dir"
if [[ $? -ne "1" ]]
then
	printf "Package cache already mounted.\n"
else
	printf "Mounting $server:$pkg_dir to $local_dir\n"
	mount -t nfs $server:$pkg_dir $local_dir 

	if [[ $? -ne "0" ]]
	then
		printf "Could not mount package cache. Exiting.\n"
		exit 1
	fi
fi

printf "Starting pacman\n"
pacman -Syu
printf "Unmounting $local_dir\n"
umount $local_dir 
printf "$local_dir unmounted\n"
printf "Synchronizing new packages to $local_dir\n"
pacman -Qe | awk '{print $1"-"$2"-*"}' | rsync -avz --include-from=- --exclude="*" $user@$server:$pkg_dir/. $local_dir/. 
printf "Cleaning package cache\n"
pacman -Sc
printf "LAN update finished\n"
