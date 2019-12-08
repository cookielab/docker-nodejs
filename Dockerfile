FROM cookielab/nodejs:build-12.13.1

RUN apk --update --no-cache add fftw-dev vips-dev

USER 1987
ONBUILD USER root
