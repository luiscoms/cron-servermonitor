FROM quentinv/phpservermonitor:latest

RUN apt-get update && apt-get -y install cron vim

# Add crontab file in the cron directory
# ADD etc/cron.d/hello-cron /etc/cron.d/hello-cron

# Give execution rights on the cron job
# RUN chmod 0644 /etc/cron.d/hello-cron

# Create the log file to be able to run tail
# RUN touch /var/log/cron.log
# Create the pseudo log file to point to stdout
RUN ln -sf /proc/1/fd/1 /var/log/cron.log

COPY ./docker-entrypoint.sh /usr/local/bin/
COPY ./daemon.sh /usr/local/bin/

WORKDIR /var/www/html/

CMD ["/usr/local/bin/docker-entrypoint.sh"]
