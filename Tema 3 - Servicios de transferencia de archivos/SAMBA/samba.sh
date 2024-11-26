#!/bin/bash

PATH=$1
USER=$2

if [ $# -ne 2 ];
then
	echo Error: Uso ./samba.sh [PATH] [USER]
	exit 1
fi

/bin/mkdir $PATH
/bin/touch $PATH/X

config="[$USER] \n
comment = directorio de samba de angel martinez escribible\n
path = $PATH\n
guest ok = no\n
writeable = yes\n
write list = $USER\n
browseable = yes\n
create mask = 0755\n
directory mask = 0755"

echo -e $config >> /etc/samba/smb.conf

/usr/bin/systemctl restart smbd
