#!/bin/bash

SLEEP_TIME=${SLEEP_TIME-60}

sleep 10
while [[ true ]]; do
	echo "$(date) Running daemon every ${SLEEP_TIME} seconds" >> /var/log/cron.log
	# date >> /var/log/cron.log
	/usr/bin/php /var/www/html/cron/status.cron.php
	echo "$(date) Sleeping daemon" >> /var/log/cron.log
	sleep 60
done