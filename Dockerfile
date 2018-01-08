FROM alpine
MAINTAINER rickfast <rick.t.fast@gmail.com>
RUN apk update && apk add nodejs
RUN apk update && apk add nginx
RUN mkdir average
ADD average.js average/
WORKDIR average
ENTRYPOINT ["node","average.js"]
