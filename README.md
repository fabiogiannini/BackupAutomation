# LinuxScripts
Some useful script for automation

###local server:
    ssh-keygen -t rsa # press always enter when asked
    cat ~/.ssh/id_rsa.pub | ssh root@myvps.com -p 1122 "cat >> ~/.ssh/authorized_keys"
    ssh root@myvps.com -p 1122

    mkdir /backup
    mkdir /backup/files
    mkdir /backup/mysql
    mkdir /srv/automations/
    nano /srv/automations/vps_backups.sh
    chmod +x /srv/automations/vps_backups.sh
