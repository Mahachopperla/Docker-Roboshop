#!/bin/bash

if [ -f /tmp/mysql_root_password.txt ]; then    # we are checking if file is created or not
    PASSWORD=$(cat /tmp/mysql_root_password.txt) # storing output of a cmd in a variable
    echo "Accessed Root password"
else
    echo "Password file not found"
    exit 1
fi
# Making it as available in env
export MYSQL_ROOT_PASSWORD=$PASSWORD # we are exporting output of text document as env variable
rm -rf /tmp/mysql_root_password.txt # once env is set we are deleting file which contains passwrd to ensure security
exec /entrypoint.sh mysqld # and here itself we are executing this shell script using mysqld
