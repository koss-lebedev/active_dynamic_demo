# Active dynamic demo application

## setup with docker
start demo
```
$ docker-compose up -d
$ docker-compose run --rm demo rake db:create
$ docker-compose run --rm demo rake db:migrate
```

stop and clean up
```
$ docker-compose stop && docker-compose rm -f
$ docker system prune -a
$ docker volume rm activedynamicdemo_db_data
```
