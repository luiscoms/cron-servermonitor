#!/bin/bash

echo "Running cron" >> /var/log/cron.log
date >> /var/log/cron.log
/usr/bin/php /var/www/html/cron/status.cron.php