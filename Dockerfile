FROM cookielab/nodejs:build-12.15.0

RUN apk --update --no-cache add fftw-dev vips-dev

USER 1987
ONBUILD USER root
