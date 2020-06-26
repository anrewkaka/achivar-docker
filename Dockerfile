FROM ubuntu:18.04

WORKDIR /app/archiva

RUN apt-get update && \
    apt-get install -y wget nano curl openjdk-8-jdk

RUN wget http://mirrors.viethosting.com/apache/archiva/2.2.5/binaries/apache-archiva-2.2.5-bin.tar.gz && \
    tar -xzvf apache-archiva-2.2.5-bin.tar.gz

USER root

EXPOSE 8080

CMD ["/app/archiva/apache-archiva-2.2.5/bin/archiva", "console"]
