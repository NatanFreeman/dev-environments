# dev-environment
This repo contains the Dockerfiles which I use to set up my Docker dev environment. I typically build it using these commands:
```bash
docker build -t dev-environment .
docker run -it --dns 8.8.8.8 dev-environment
```