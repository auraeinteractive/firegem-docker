# firegem-docker

A docker image for Firegem CMS. Gets you quickly up and running with the latest
version of Firegem CMS on your set-up.

## Before you do anything

First of all, install the requirements:

```bash
bash requirements.sh
```

# Docker

## How to build docker image

```bash
docker build -t firegemcms ./
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

# Logging into Firegem

Once Firegem CMS has been set up through building the docker image, you can 
access your site via:

 * https://myfiregemsite.com/
 
Edit your hosts file and set myfiregemsite.com to the IP address of your docker.

Log into Firegem here:

 * https://myfiregemsite.com/admin.php
 * username: firegem
 * password: admin

