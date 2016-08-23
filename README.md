# Backup Automation
Some useful script for automation

## vps_backups.sh
I made this script to automate the creation of the backups on my vps. I know there are many services to create backups directly from the control panel of the vps or additional services, but I'm using many vps on different providers so I wanted to have a unique standard and a unique repository for all backups at home.

In this script I have configured just one vps, but you can configure as many as you want without doing the configuration directly on the vps, you just need direct access to the remote host from your backup vm/vps

###Configuration - local server:
    ssh-keygen -t rsa # press always enter when asked
    cat ~/.ssh/id_rsa.pub | ssh root@myvps.com -p 1122 "cat >> ~/.ssh/authorized_keys"
    ssh root@myvps.com -p 1122

    mkdir /backup
    mkdir /backup/files
    mkdir /backup/mysql
    mkdir /srv/automations/
    nano /srv/automations/vps_backups.sh
    chmod +x /srv/automations/vps_backups.sh
