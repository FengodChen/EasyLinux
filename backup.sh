#! /bin/bash
# This shell is used to backup all the useful linux shell file

# Change it when your path has been changed
Home_Path=/home/fengodchen
EasyLinux_Path=${Home_Path}/WorkSpace/GitHub/EasyLinux/

function EasyLinux_Backup(){
	cp -ru ${Home_Path}/.bash_logout  ${EasyLinux_Path}/data
	cp -ru ${Home_Path}/.bashrc       ${EasyLinux_Path}/data
	cp -ru ${Home_Path}/.vimrc        ${EasyLinux_Path}/data
}

cd ${EasyLinux_Path}
if test $? -eq 0; then
	EasyLinux_Backup
else
	echo 'Path ERROR'
fi
