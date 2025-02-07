# Dockerfile.builder
# alcapone1933/composerize:builder
FROM alcapone1933/ubuntu:22.04
LABEL maintainer="alcapone1933 <alcapone1933@cosanostra-cloud.de>" \
      org.opencontainers.image.created="$(date +%Y-%m-%d\ %H:%M)" \
      org.opencontainers.image.authors="alcapone1933 <alcapone1933@cosanostra-cloud.de>" \
      org.opencontainers.image.url="https://hub.docker.com/r/alcapone1933/composerize" \
      org.opencontainers.image.ref.name="alcapone1933/composerize"
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
    apt-get install apache2 -y && \
    rm /etc/apache2/sites-available/000-default.conf && \
    rm -r /var/www/html  && \
    rm -rf /var/lib/apt/lists/*
COPY 000-default.conf /etc/apache2/sites-available/
COPY composerize.tar.gz /opt/
# COPY --from=alcapone1933/composerize:builder /opt/composerize.tar.gz /opt/
RUN tar xfvz /opt/composerize.tar.gz -C /var/www/ && rm /opt/composerize.tar.gz && \
    echo "ServerName default" > /etc/apache2/conf-available/servername.conf && \
    a2enconf servername.conf
WORKDIR /var/www/
EXPOSE 80
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["apache2ctl","-D","FOREGROUND"]
