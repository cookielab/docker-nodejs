# How to update this image?

1. check https://cloud.docker.com/u/cookielab/repository/docker/cookielab/alpine/tags if there is new version of base image
2. check https://pkgs.alpinelinux.org/packages?name=nodejs&arch=x86_64 if there is new version of nodejs page on alpine repository
3. update `build/Dockerfile` and `./Dockerfile` base image version based on nodejs package version
4. make new tag with new version (based on version of nodejs) and push it to GitLab