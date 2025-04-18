The script backup your appplicaton directory, compress with timestamp filname and deletes backup older than 7 days.

---
#FEATURES

    - Backup a specified directory (eg., '/var/www/html') into the /home/janath/backup
    - Compress the backup using "tar.gz"
    - Adds the current date to the backup filname (eg., 'html-backup-2025-04-18.tar.gz'
    - Deletes the backup files older than 7 days.
    - Checks for the required tools like (tar, gzip, cron)) before processing


---


#HOW TO USE

    ** TO MAke the script executable**:
    USE './backup.sh' or 'sh backup.sh'
    
    IF the script won't execute >> Use "chmod +x backup.sh"
