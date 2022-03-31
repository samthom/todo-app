## Nginx container

### Commands
```sh
docker run --name nginx_todo --publish 8008:80 -v ${PWD}/default.conf:/etc/nginx/conf.d/default.conf nginx:alpine 

docker run --name nginx_todo --publish 8008:80 --network=todo-network --hostname nginx --add-host=todo:172.19.0.1 -v ${PWD}/default.conf:/etc/nginx/conf.d/default.conf nginx:alpine
```