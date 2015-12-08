FROM logstash:latest
MAINTAINER julius_loman@tempest.sk

RUN wget http://codeload.github.com/theangryangel/logstash-output-jdbc/zip/master -O /tmp/logstash-output-jdbc.zip && \
    mkdir -p /opt/logstash/vendor/jar/jdbc/ && wget http://jdbc.postgresql.org/download/postgresql-9.4-1206-jdbc41.jar -O /opt/logstash/vendor/jar/jdbc/postgresql-9.4-1206-jdbc41.jar && \
    unzip /tmp/logstash-output-jdbc.zip -d /tmp && mv /tmp/logstash-output-jdbc-master /tmp/logstash-output-jdbc && \
    /opt/logstash/bin/plugin install logstash-output-jdbc && rm -rf /tmp/logstash-output-jdbc
