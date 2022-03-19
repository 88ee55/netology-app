FROM nginx:1.21-alpine
RUN chmod -R a+w /var/cache/nginx/ \
        && touch /var/run/nginx.pid \
        && chmod a+w /var/run/nginx.pid \
        && rm /etc/nginx/conf.d/*

COPY config.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
EXPOSE 8080
USER nginx