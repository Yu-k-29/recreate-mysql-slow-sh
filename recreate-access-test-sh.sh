TARGET_FILE=/var/log/nginx/access_test.log
TARGET_FOLDER=/var/log/nginx

if [ -e $TARGET_FILE ]; then
    sudo chmod 777 $TARGET_FOLDER
    sudo chmod 777 $TARGET_FILE
    rm -rf $TARGET_FILE
    echo "Delete $TARGET_FILE"
fi

echo "nginx restart..."
sudo service nginx restart
echo "complete!!"
sudo chmod 755 $TARGET_FOLDER
sudo chmod 644 $TARGET_FILE

echo "Recreate $TARGET_FILE are complete!!"