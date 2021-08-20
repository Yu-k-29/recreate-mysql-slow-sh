TARGET_FILE=/var/log/mysql/mysql-slow.log
TARGET_FILE2=/var/log/nginx/access_test.log
TARGET_FOLDER=/var/log/nginx


if [ -e $TARGET_FILE ]; then
    rm -rf $TARGET_FILE
    echo "Delete $TARGET_FILE"
    echo ""
fi

if [ -e $TARGET_FILE2 ]; then
    sudo chmod 777 $TARGET_FOLDER
    sudo chmod 777 $TARGET_FILE2
    rm -rf $TARGET_FILE2
    echo "Delete $TARGET_FILE2"
    echo ""
fi

echo "mysql restart..."
sudo service mysql restart
echo "complete!!"
echo ""
sudo chmod 777 $TARGET_FILE

echo "nginx restart..."
sudo service nginx restart
echo "complete!!"
echo ""
sudo chmod 755 $TARGET_FOLDER
sudo chmod 644 $TARGET_FILE2

echo "Recreate Log Files are complete!!"
