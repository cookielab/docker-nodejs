FROM cookielab/nodejs:server-18.12.1

RUN apk --update --no-cache add yarn --repository http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk --update --no-cache add nodejs-dev npm --repository http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk --update --no-cache add git openssh-client python3 bash curl postgresql13-client findutils linux-headers build-base
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r0/glibc-2.35-r0.apk
RUN apk add --force-overwrite glibc-2.35-r0.apk
RUN apk fix --force-overwrite alpine-baselayout-data

USER 1987
ONBUILD USER root
