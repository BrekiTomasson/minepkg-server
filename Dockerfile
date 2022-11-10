FROM eclipse-temurin:17-jre-focal

MAINTAINER Breki Tomasson <breki.tomasson@gmail.com>

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y --allow-downgrades --allow-remove-essential ca-certificates \
 && update-ca-certificates

RUN curl -s https://minepkg.io/install.sh | bash \
 && mkdir -p /root/.config/minepkg \
 && mkdir -p /etc/minepkg \
 && echo 'useSystemJava=true\n' > /etc/minepkg/config.toml

# CMD sh -c echo "/root/.minepkg/minepkg launch ${MODPACK} --server"

ENTRYPOINT ["/root/.minepkg/minepkg", "launch", "--server"]