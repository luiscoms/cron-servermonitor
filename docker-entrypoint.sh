#!/bin/bash

echo "Starting cron"
cron
echo "Starting apache"
/usr/sbin/apache2ctl -D FOREGROUND
