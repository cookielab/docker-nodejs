FROM cookielab/nodejs:server-12.14.0

RUN apk --update --no-cache add yarn --repository http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk --update --no-cache add nodejs-dev nodejs-npm --repository http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk --update --no-cache add git openssh-client python2 bash curl postgresql-client findutils linux-headers build-base
RUN apk --update --no-cache add libstdc++=9.2.0-r3 --repository http://dl-cdn.alpinelinux.org/alpine/edge/main # tmp upgrade package because we are using node.js from edge with is need this version
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-2.30-r0.apk
RUN apk add glibc-2.30-r0.apk
RUN rm glibc-2.30-r0.apk

USER 1987
ONBUILD USER root
