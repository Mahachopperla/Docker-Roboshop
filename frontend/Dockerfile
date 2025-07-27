# frontend is developed in nginx and nginx application is system application . not our customised application.

# so we need to give some set of permissions to nginx 

# -> search in google as - nginx as non-root container
# 	nginx is system package so there will be many limitations.

FROM nginx:1.29.0-alpine
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/cache/nginx/client_temp && \
        mkdir -p /var/cache/nginx/proxy_temp && \
        mkdir -p /var/cache/nginx/fastcgi_temp && \
        mkdir -p /var/cache/nginx/uwsgi_temp && \
        mkdir -p /var/cache/nginx/scgi_temp && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /etc/nginx/ && \
        chmod -R 755 /etc/nginx/ && \
        chown -R nginx:nginx /var/log/nginx
RUN mkdir -p /etc/nginx/ssl/ && \
    chown -R nginx:nginx /etc/nginx/ssl/ && \
    chmod -R 755 /etc/nginx/ssl/
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /run/nginx.pid
COPY nginx.conf /etc/nginx/nginx.conf
COPY static /usr/share/nginx/html/
USER nginx
CMD ["nginx", "-g", "daemon off;"]



# below code is without using any docker best practices

# FROM nginx
# RUN rm -rf /usr/share/nginx/html/*
# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf
# COPY static /usr/share/nginx/html/
# COPY nginx.conf /etc/nginx/nginx.conf

