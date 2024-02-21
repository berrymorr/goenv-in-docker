#!/bin/bash

chown -v root:root /var/.env /var/authorized_keys
chmod -v 644 /var/.env /var/authorized_keys
for ln in $( cat /var/.env ); do export "${ln}"; done
cat /var/authorized_keys > "/home/${DEV_USER}/.ssh/authorized_keys"
#fix ~/go dir perms because it's a binded volume
chown -vR "${DEV_USER}:${DEV_USER}" "/home/${DEV_USER}/go"
/usr/sbin/sshd -D
