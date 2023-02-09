FROM nginx:1.23.3-alpine
LABEL "author" = "Henrique Fantini"
WORKDIR /server

# == SOFTWARE

RUN apk add --update nodejs npm

# == CONFIG

COPY ./config/nginx/nginx.conf /etc/nginx/nginx.conf

# == APPLICATION

COPY ./src .

RUN npm install
RUN npm run build

RUN cp -r ./dist/dos4gm/. /usr/share/nginx/html/

# == MISC

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]