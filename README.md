# backup-wordpress-shell
shell about backup wordpress folder and database.
You need to change the shell:
- sourceFolder is the folder you want to backup, such as your wordpress folder:
```
/home/www/wordpress
```
- backDir is the folder your backup files in, such as:
```
/var/backup
```
- destDir is automatic create use this format: "wordpress160823", the sourceFolder will copy into this folder, and wordpress.sql also exported to this folder.
- And last, destDir will gzip to this format: "wordpress160823.tar.gz", the follder "wordpress160823" will be removed"
