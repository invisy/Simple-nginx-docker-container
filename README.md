# Simple-nginx-docker-container
## Build & run
```
docker build -t sec_lab1:latest .
docker run --name sec_lab1 -p 27015:8006 -d sec_lab1
```

## Connect to container
```
docker exec -it sec_lab1 bash
```

## Show environment variable (container`s bash)
```
echo "Envvar (group) : $MY_ENVVAR"
```
