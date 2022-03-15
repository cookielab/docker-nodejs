FROM cookielab/nodejs:build-16.13.2

RUN apk --update --no-cache add fftw-dev vips-dev

USER 1987
ONBUILD USER root
