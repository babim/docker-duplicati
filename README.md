# Duplicati backup tool on docker
(thanks dmitryint)

#Usage

```bash
docker run --rm -it \
    -v /root/.config/Duplicati/:/root/.config/Duplicati/ \
    -v /data:/data \
    babim/duplicati
```

### Start duplicati with web interface ###
To start with the web interface, run the following command:
```bash
docker run --rm -it \
    -v /root/.config/Duplicati/:/root/.config/Duplicati/ \
    -v /data:/data \
    -e DUPLICATI_PASS=duplicatiPass \
    -p 8200:8200 \
    babim/duplicati
```
