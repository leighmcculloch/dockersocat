# dockersocat

Dockersocat serves the Docker socket (`/var/run/docker.sock`) on a TCP port, default `2375`.

## Why

If you're already running a Docker container and want to be able to access the Docker socket from within the container, you normally need to stop the container, perform some Docker wizardry to add `/var/run/docker.sock` as a mount, and restart the container.

Dockersocat is more convenient.

Dockersocat exposes `/var/run/docker.sock` on a TCP port your container can access. 

## Install

```
brew install 4d63/dockersocat/dockersocat
```

## Usage

On the host:
```
dockersocat
```

From within a container:
```
DOCKER_HOST=host.docker.internal:2375 docker ps
```
