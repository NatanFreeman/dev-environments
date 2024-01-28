# dev-environment
This repo contains the Dockerfiles which I use to set up my Docker dev environments. Right now there are two environments, [one for Rust](https://hub.docker.com/repository/docker/natanfreeman/dev-env-rust/general) and [one for Python AI development](https://hub.docker.com/repository/docker/natanfreeman/dev-env-python/general). 

The Rust container comes with a default user called `devuser` with the password `password`. It supports connection via SSH. The Python container just has the Ubuntu root user for now and does not support SSH. The containers can be ran like so.

## Rust
### Building
```bash
docker build -t dev-env-rust -f Dockerfile.rust .
```
### Connection via SSH
```bash
docker run -p 127.0.0.1:2222:22 dev-env-rust
ssh devuser@localhost -p 2222
```

## Python
### Building
```bash
docker build -t dev-env-python -f Dockerfile.python .
```
### Connection via interactive terminal
```bash
docker run -it --dns 8.8.8.8 dev-env-python
```