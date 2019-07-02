FROM cookielab/nodejs:server-8.14.0

RUN apk --update --no-cache add yarn --repository http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    apk --update --no-cache add nodejs-dev nodejs-npm fftw-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/main && \
    apk --update --no-cache add git openssh-client python2 build-base findutils bash lcms2-dev libpng-dev curl linux-headers udev && \
    apk --update --no-cache add vips-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
    apk add glibc-2.28-r0.apk && \
    rm glibc-2.28-r0.apk

USER 1987
ONBUILD USER root
