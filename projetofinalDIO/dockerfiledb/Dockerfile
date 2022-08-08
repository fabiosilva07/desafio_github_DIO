FROM mysql

COPY ./banco.sql /tmp

CMD ["mysqld","--init-file=/tmp/banco.sql"]
