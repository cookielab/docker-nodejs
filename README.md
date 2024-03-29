# Cookielab - Node.js image

This image is based on [our Alpine Linux image](https://cloud.docker.com/u/cookielab/repository/docker/cookielab/alpine).

It actually contains three different images. But all of them are meant for node.js application.

## cookielab/nodejs:server-<version>

The minimal image for running applications. Contains only node.js.

## cookielab/nodejs:build-<version>

Based on `cookielab/nodejs:server-<version>` image. It's for building application. It contains `yarn`, `npm`, `python` (for Gym deps.) and `git`.

## cookielab/nodejs:<version>

Based on `cookielab/nodejs:build-<version>` image. It's for building frontend application. It contains few more libraries needed for optimization images and other frontend stuff.

### Usage

There is no `latest` tag on this image.

Note: entrypoint is *not set* to `node` itself but to shell, so you don't need to overwrite it.

```
FROM cookielab/nodejs:16.13.2

# ...
# your commands
# ...

USER 1987

ONBUILD USER root

CMD ["node", "/some-path/your-script.js"]
```
