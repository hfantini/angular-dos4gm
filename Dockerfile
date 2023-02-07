FROM nginx:1.23.3-alpine
LABEL "author" = "Henrique Fantini"

# == CONFIG

COPY ./config/nginx/nginx.conf /etc/nginx/nginx.conf

# == APPLICATION

# == MISC

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]