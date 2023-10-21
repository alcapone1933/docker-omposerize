# Composerize
[![Build Status](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-composerize?logo=drone&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-composerize)
[![Build Status Branch Master](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-composerize/master?logo=drone&label=build%20%5Bbranch%20master%5D&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-composerize/branches)
[![Docker Pulls](https://shields.cosanostra-cloud.de/docker/pulls/alcapone1933/composerize?logo=docker&logoColor=blue)](https://hub.docker.com/r/alcapone1933/composerize/tags)
![Docker Image Version (latest semver)](https://shields.cosanostra-cloud.de/docker/v/alcapone1933/composerize?sort=semver&logo=docker&logoColor=blue&label=dockerhub%20version)

[![Composerize](/img/docker-composerize.png)](https://www.composerize.com/)
### FORK
Docker Composerize the original is from github \
https://github.com/composerize/composerize

#  Docker REPO
https://hub.docker.com/r/alcapone1933/composerize
* * *
### Docker CLI

```bash
docker run -d \
    -p 8080:80 \
    --restart always \
    --name composerize \
    alcapone1933/composerize:latest

```

### Docker Compose

```yaml
version: "3.9"
services:
  composerize:
    image: alcapone1933/composerize:latest
    container_name: composerize
    restart: always
    ports:
      - 8080:80
    environment:
      - TZ=Europe/Berlin
```

* * *

## Volume params

| Name    | Value   | Example                    |
|---------|---------|----------------------------|
|  Data   | volume  | composerize_data:/var/www/ |

* * *

## Env params


| Name          | Value     | Example                        |
|---------------|-----------|--------------------------------|
| Timezone      | TZ        | Europe/Berlin                  |


