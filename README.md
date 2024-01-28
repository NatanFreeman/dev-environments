# dev-environment
This repo contains the Dockerfiles which I use to set up my Docker dev environments. Right now there are two environments, [one for Rust](https://hub.docker.com/repository/docker/natanfreeman/dev-env-rust/general) and [one for Python AI development](https://hub.docker.com/repository/docker/natanfreeman/dev-env-python/general). 

The containers come with a default user called `devuser` with the password `password`.They supports connection via SSH.

The containers are based on `Dockerfile.base`. Building it is required to build the rest. 

## Base (Required for Rust)
```bash
docker build -t base-env -f Dockerfile.base .
```

## Rust
### Building
```bash
docker build -t dev-env-rust -f Dockerfile.rust .
```
### Connection via SSH
```bash
docker run -p 127.0.0.1:2222:22 -p 127.0.0.1:8080:8080 dev-env-rust
ssh devuser@localhost -p 2222
```

## Python
### Building
```bash
docker build -t dev-env-python -f Dockerfile.python .
```
### Connection via SSH
```bash
docker run -p 127.0.0.1:2223:22 dev-env-python
ssh devuser@localhost -p 2223
```