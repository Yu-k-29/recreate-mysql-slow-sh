TARGET_FILE=/var/log/mysql/mysql-slow.log

if [ -e $TARGET_FILE ]; then
    rm -rf $TARGET_FILE
    echo "Delete $TARGET_FILE"
    echo ""
fi

echo "mysql restart..."
sudo service mysql restart
echo "complete!!"
echo ""
sudo chmod 777 $TARGET_FILE

echo "Recreate mysql-slow.log is complete!!"
