TARGET_FILE=/var/log/mysql/mysql-slow.log

if [ -e $TARGET_FILE ]; then
    rm -rf $TARGET_FILE
    echo "Delete $TARGET_FILE"
fi

echo "mysql restart..."
sudo service mysql restart
echo "complete!!"
sudo chmod 777 $TARGET_FILE

echo "Recreate $TARGET_FILE are complete!!"