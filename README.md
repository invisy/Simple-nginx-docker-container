# Simple-nginx-docker-container
It`s just first simple laboratory work
## Build & run
```
docker build -t sec_lab1:latest .
docker run --name sec_lab2 -p 27015:8006 -d sec_lab2
```

## Connect to container
```
docker exec -it sec_lab2 bash
```

## Show environment variable (container`s bash)
```
echo "Envvar (group) : $MY_ENVVAR"
```
