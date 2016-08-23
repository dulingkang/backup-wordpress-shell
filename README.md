# backup-wordpress-shell
shell about backup wordpress folder and database.
You need to change the shell:
- 1. sourceFolder is the folder you want to backup, such as your wordpress folder:
```
/home/www/wordpress
```
- 2. backDir is the folder your backup files in, such as:
```
/var/backup
```
- 3. mysql config
input your wordpress db username password and dbname, the destination export folder is:
```
sqlPath="$destDir/wordpress.sql"
```
user="dbuser"
password="yourdbpassword"
dbname="wordpress"
```
## process
- destDir is automatic created use this format: "wordpress160823", the sourceFolder will copy into this folder, and wordpress.sql also exported to this folder.
- And last, destDir will gzip to this format: "wordpress160823.tar.gz", the follder "wordpress160823" will be removed"
