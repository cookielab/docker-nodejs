FROM cookielab/nodejs:build-10.14.0

RUN apk --update --no-cache add fftw-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/main && \
    apk --update --no-cache add lcms2-dev libpng-dev udev && \
    apk --update --no-cache add vips-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing

USER 1987
ONBUILD USER root
