# Ngrok tunnel

HTTP tunnel service based on [ngrok](https://ngrok.com) and docker.

#### Get the image

```bash
$ docker pull gtriggiano/ngrok-tunnel
```

#### ...and use it

```bash
$ docker run -it  -e "TARGET_HOST=servicetotunnel" -e "TARGET_PORT=5000" -p 4040 gtriggiano/ngrok-tunnel
```

#### Custom ngrok configuration
It is possible to use custom `ngrok.yml` config. Just need map a config file from local machine inside container

```bash
$ docker run -v /path/to/ngrok.yml:/ngrok.yml gtriggiano/ngrok-tunnel
```

### Env vars (options)

`TARGET_HOST`: mandatory

`TARGET_PORT`: mandatory

`NGROK_REGION`: one of [us, eu, ap, au], default `us`

### Networking

The ngrok traffic inspection service and it's GUI are exposed on the port `4040` of the container.

### Why?

When working on a project I often need to demo the functionality/design/whatever of the apps I'm working on, to some collegue.

I heavily use docker in my dev-to-production process to ensure the maximum portability of the software.

With [ngrok-tunnel](https://hub.docker.com/r/gtriggiano/ngrok-tunnel) I can easily integrate an HTTP tunnel service in my docker-compose.yml(s), letting peoples connect via browser to my running-on-localhost apps from wherever they are!
