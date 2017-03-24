# Ngrok tunnel

HTTP tunnel service based on [ngrok](https://ngrok.com) and docker.

#### Get the image
```bash
$ docker pull strund3r/ngrok-localhost
```
#### ...and use it
```bash
$ docker run -it  -e "TARGET_HOST=servicetotunnel" -e "TARGET_PORT=5000" -p 4040 strund3r/ngrok-localhost
```

### Env vars (options)

`TARGET_HOST`: mandatory

`TARGET_PORT`: mandatory

`NGROK_REGION`: one of [us, eu, ap, au], default `us`

### Networking
The ngrok traffic inspection service and it's GUI are exposed on the port `4040` of the container.
