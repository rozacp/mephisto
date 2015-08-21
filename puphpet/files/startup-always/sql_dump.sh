#!/bin/bash

# mysql server info
USER=root
PASS=root
BACKUP_DIR=/vagrant/sql

# get the list of dbs to backup
dbs=$(echo 'show databases' | mysql --user="$USER" --password="$PASS")

# exclude information_schema, performance_schema
dbs=$(echo $dbs | sed -r 's/(Database |information_schema |mysql |performance_schema)//g')

echo "//-----------------------------"

# loop over the list of databases
for db in $dbs
do
  # filename of db backup
	FILE="$db.sql"

	echo "Backing up: '$db' into $BACKUP_DIR/$FILE"
	mysqldump --user="$USER" --password="$PASS" --databases "$db" > "$BACKUP_DIR/$FILE"
done

echo "//--backup done----------------"
echo

# restore
# mysql -u username -p password databasename < file.sql