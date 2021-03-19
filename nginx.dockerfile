FROM nginx:alpine

RUN mkdir -p /var/www/app && chown nginx:nginx /var/www/app

RUN mkdir -p /etc/nginx/includes

COPY nginx/default-server-config.nginx /etc/nginx/includes/default-server-config.conf

COPY nginx/fastcgi_params.nginx /etc/nginx/fastcgi_params

COPY nginx/site.template.nginx /etc/nginx/templates/default.conf.template