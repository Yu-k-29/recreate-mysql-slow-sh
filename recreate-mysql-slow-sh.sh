TARGET_FILE=/var/log/mysql/mysql-slow.log
del_flag="$false"

if [ -e $TARGET_FILE ]; then
    rm -rf /var/log/mysql/mysql-slow.log
    echo "Delete mysql-slow.log!!"
    echo ""
fi

echo "mysql restart..."
sudo service mysql restart
echo "complete!!"
echo ""
sudo chmod 777 /var/log/mysql/mysql-slow.log

echo "Recreate mysql-slow.log is complete!!"
