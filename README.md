# dev-environment
This repo contains the Dockerfiles which I use to set up my Docker dev environments. Right now there are two environments, [one for Rust](https://hub.docker.com/repository/docker/natanfreeman/dev-env-rust/general) and [one for Python AI development](https://hub.docker.com/repository/docker/natanfreeman/dev-env-python/general).

The containers come with a default user called `devuser` with the password `password`.They supports connection via SSH.

# Building
Run `docker-compose build` to build the images.

# Running
## Python
```bash
docker-compose up --force-recreate python
ssh devuser@localhost -p 2223
```
## Rust
```bash
docker-compose up --force-recreate rust
ssh devuser@localhost -p 2222
```
