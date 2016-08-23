#!/bin/sh
sourceFolder="/home/www/wordpress"
backDir="/var/backup"
folderName="wordpress$(date +%y%m%d)"
destDir="$backDir/$folderName"
if [ ! -d "$destDir" ]; then
    echo "$destDir is not exist"
else
    rm -rf $destDir
    echo "delete dir: $destDir"
fi
mkdir -p $destDir

if [ ! -f "$backDir/$folderName.tar.gz" ]; then
    echo "$folderName.tar.gz is not exist"
else
    rm -rf "$backDir/$folderName.tar.gz"
    echo "delete $backDir/$folderName.tar.gz"
fi

cp -rf $sourceFolder $destDir
echo "copy blog to $destDir finished"

sqlPath="$destDir/wordpress.sql"
user="dbuser"
password="yourdbpassword"
dbname="wordpress"
mysqldump -u$user -p$password $dbname > $sqlPath
echo "backup wordpress.sql to $sqlPath finished"

cd $backDir
tar -zcf $folderName.tar.gz $folderName
echo "tar $destDir complete"
rm -rf $destDir
echo "delete $destDir"
