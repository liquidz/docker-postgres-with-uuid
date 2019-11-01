FROM postgres:10.9

ADD init.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/init.sh && \
    localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8