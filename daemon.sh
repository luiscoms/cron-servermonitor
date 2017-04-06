#!/bin/bash

sleep 10
while [[ true ]]; do
	echo "Running daemon" >> /var/log/cron.log
	date >> /var/log/cron.log
	/usr/bin/php /var/www/html/cron/status.cron.php
	echo "Sleeping daemon" >> /var/log/cron.log
	sleep 60
done