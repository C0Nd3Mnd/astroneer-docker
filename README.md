# Astroneer Dedicated Server (in a container)

[![Docker Pulls](https://img.shields.io/docker/pulls/whalybird/astroneer-server.svg)](https://hub.docker.com/r/whalybird/astroneer-server)
[![Docker stars](https://img.shields.io/docker/stars/whalybird/astroneer-server.svg)](https://hub.docker.com/r/whalybird/astroneer-server)

A docker image to run Astroneer Dedicated Server using [AstroTuxLauncher](https://github.com/JoeJoeTV/AstroTuxLauncher). The source code is [available on GitHub](https://github.com/C0Nd3Mnd/astroneer-server/).

## Compose

```yaml
services:
  astroneer:
    image: whalybird/astroneer-server:latest
    restart: unless-stopped
    container_name: astroneer
    stdin_open: true
    tty: true
    ports:
      - 7777:7777/udp
    volumes:
      - ./saved:/astrotux/AstroneerServer/Astro/Saved
```

## Interacting with the AstroTuxLauncher console

You can interact with the console by using `docker attach <container name>`. If you used the compose example from above, that'd be `docker attach astroneer`. Detach using `CTRL+p` + `CTRL+q`, using `CTRL+c` will shutdown the server.
