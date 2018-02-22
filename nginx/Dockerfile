FROM nginx

ADD ./default.conf /etc/nginx/conf.d/

ADD ./init.sh /root

RUN apt update \
    && apt install -y git curl wget gnupg \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt install -y nodejs \
    && chmod +x /root/init.sh \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["/root/init.sh"]
