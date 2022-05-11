# Composerize
[![Composerize](https://raw.githubusercontent.com/alcapone1933/images/master/png/composerize/composerize_2558x1276.png)](https://www.composerize.com/)
### FORK
Docker Composerize the original is from github \
https://github.com/magicmark/composerize OR Here https://github.com/Griefed/docker-App-Collection \
#  Docker REPO
https://hub.docker.com/r/alcapone1933/composerize
* * *
### Docker CLI

```bash
docker run -d \
    -p 8080:80 \
    --restart always \
    --name composerize \
    alcapone1933/composerize
```

### Docker Compose

```yaml
version: "3.9"
services:
  composerize:
    image: alcapone1933/composerize
    container_name: composerize
    restart: always
    ports:
      - 8080:80
    environment:
      - TZ=Europe/Berlin            # optional
    volumes:
      - data:/var/www/              # optional
volumes:
  data:
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
