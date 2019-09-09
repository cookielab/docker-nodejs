FROM cookielab/nodejs:server-10.16.3

RUN apk --update --no-cache add yarn --repository http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk --update --no-cache add nodejs-dev nodejs-npm --repository http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk --update --no-cache add git openssh-client python2 build-base findutils bash curl linux-headers postgresql-client
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk
RUN apk add glibc-2.29-r0.apk
RUN rm glibc-2.29-r0.apk

USER 1987
ONBUILD USER root
