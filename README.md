# dev-environment
This repo contains the Dockerfiles which I use to set up my Docker dev environments. Right now there are two environments, [one for Rust](https://hub.docker.com/repository/docker/natanfreeman/dev-env-rust/general) and [one for Python AI development](https://hub.docker.com/repository/docker/natanfreeman/dev-env-python/general). They can be ran like so.

## Rust
```bash
docker build -t dev-env-rust -f Dockerfile.rust .
docker run -it --dns 8.8.8.8 dev-env-rust
```

## Python
```bash
docker build -t dev-env-python -f Dockerfile.python .
docker run -it --dns 8.8.8.8 dev-env-python
```