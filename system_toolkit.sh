#!/bin/bash

set -u

LOG_FILE="$(pwd)/system_toolkit.log"

log_action (){

	echo "$(date): $1" >> "$LOG_FILE"
}

system_info (){

	echo "user: $USER"
	echo "Hostname: $(hostname)"
	echo "System booted at: $(uptime -s)"
	echo "uptime: $(uptime)"
	log_action "system_information"
}

disk_usage (){
	df -h /
	echo "information about Disk usage"
	log_action "Disk usage"
}

backup_dir (){
	read -p "Enter directory to backup it: " dir
	if [ -d "$dir" ]
	then
	   mkdir -p ~/backups
	   zip -r ~/backups/backup_$(date +%F).zip "$dir"
	   echo "Backup completed, sucseccfully"
	   log_action "Backup time"
	else
	   echo "Directory not found, Please try again"
	fi

}

help_menu (){
	echo "========================================== Linux System Uitlity toolkit ======================================="
	echo -e "\n"
	echo "1) System Information "
	echo "2) Disk Usage"
	echo "3) Backup Directory"
	echo "4) Exit"

}

while true
do
	help_menu
	read -p "Choose an option: " choice

	case $choice in

	   1) system_info;;
	   2) disk_usage ;;
	   3) backup_dir ;;
    	   4) echo "Goodbye $USER " ; break;;
 	   *) echo "Invalid choice, try again";;

	esac

done
