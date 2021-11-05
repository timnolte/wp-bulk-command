FROM forumone/wordpress-cli:7.4-cli2.4.0

COPY wp-bulk-command.sh /usr/local/bin/wp-bulk-command

RUN chmod 0755 /usr/local/bin/wp-bulk-command

WORKDIR /var/www/html

ENTRYPOINT [ "/usr/local/bin/wp-bulk-command" ]
