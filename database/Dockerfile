FROM mysql:8.0

COPY init.sql /docker-entrypoint-initdb.d

ENV MYSQL_DATABASE=shopdb
ENV MYSQL_USER=atimaby 
ENV MYSQL_PASSWORD=12345678 
ENV MYSQL_ROOT_PASSWORD=12345678

CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]
