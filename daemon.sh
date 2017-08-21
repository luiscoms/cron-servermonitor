#!/bin/bash

SLEEP_SECONDS=${SLEEP_SECONDS}

if [[ -z $SLEEP_SECONDS ]]; then
	echo "$(date) To enable cron set \$SLEEP_SECONDS environment var"
	exit 0
fi

echo "$(date) Starting cron with ${SLEEP_SECONDS} seconds"

sleep 10
while [[ true ]]; do
	echo "$(date) Running daemon every ${SLEEP_SECONDS} seconds" #>> /var/log/cron.log
	# date >> /var/log/cron.log
	/usr/bin/php /var/www/html/cron/status.cron.php
	echo "$(date) Sleeping daemon" #>> /var/log/cron.log
	sleep ${SLEEP_SECONDS}
done