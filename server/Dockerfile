FROM eclipse-temurin:17-jre-focal

MAINTAINER Breki Tomasson <breki.tomasson@gmail.com>

RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

ADD https://storage.googleapis.com/minepkg-client/latest/minepkg-linux-amd64 /usr/bin/minepkg

RUN chmod +rx /usr/bin/minepkg

RUN mkdir /etc/minepkg && echo 'useSystemJava=true\n' > /etc/minepkg/config.toml

