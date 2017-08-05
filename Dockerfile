FROM centos:7

MAINTAINER mian <147286318@qq.com>

WORKDIR /var/logstash-conf

ADD logstash-conf .
ADD template/ ./template

VOLUME ["/tmp/conf.d"]

ENTRYPOINT ["./logstash-conf", "-stderrthreshold=INFO"]
