#!/bin/bash

echo "Creating config file"
ln -sf config/config.php config.php
echo "Starting cron"
service cron restart
echo "Starting apache"
/usr/sbin/apache2ctl -D FOREGROUND
