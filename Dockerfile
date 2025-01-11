FROM nginx:alpine

COPY public /usr/share/nginx/html/

# Pass your nginx conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Forward ports
EXPOSE 443
