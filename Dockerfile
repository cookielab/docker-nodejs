FROM cookielab/nodejs:build-18.12.1

RUN apk --update --no-cache add fftw-dev vips-dev

USER 1987
ONBUILD USER root
