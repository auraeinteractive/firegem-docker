# firegem-docker

A docker image for Firegem CMS. Gets you quickly up and running with the latest
version of Firegem CMS on your set-up.

# Docker

## How to build docker image

```bash
docker build -t firegemcms ./docker/
```

## Run the Docker

```bash
docker run -d -p 8088:80 --name firegemcms-container firegemcms
```

## If you want to enter the docker container

```bash
docker exec -it firegemcms-container bash
```

## If you want to re-build the image for some reason, do this:

```bash
docker rmi firegemcms
```

