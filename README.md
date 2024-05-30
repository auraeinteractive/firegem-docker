# firegem-docker

A docker image for Firegem CMS. Gets you quickly up and running with the latest version of Firegem CMS on your set-up.

This docker uses an .env file with some default usernames and password for the database and similar settings. Make sure to review this file in the repository folder (e.g. "nano ./.env").

# Docker

## How to build and run the docker image

```bash
docker-compose up --build
```

## If you want to enter the docker container

```bash
docker exec -it firegem-docker-container bash
```

## If you want to remove the image and container for some reason, do this:

```bash
docker rmi firegem-docker
docker rm firegem-docker-container
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

