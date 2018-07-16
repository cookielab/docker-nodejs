FROM cookielab/nodejs:server-8.11.3

RUN apk --update --no-cache add yarn --repository http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    apk --update --no-cache add nodejs-dev nodejs-npm --repository http://dl-cdn.alpinelinux.org/alpine/edge/main && \
    apk --update --no-cache add git openssh-client python2 build-base findutils bash lcms2-dev libpng-dev fftw-dev && \
    apk --update --no-cache add vips-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.27-r0/glibc-2.27-r0.apk && \
    apk add glibc-2.27-r0.apk && \
    rm glibc-2.27-r0.apk

USER 1987
ONBUILD USER root
