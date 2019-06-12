#!/usr/bin/env sh

docker-compose exec publisher rake db:setup
docker-compose exec publishing-api rake db:setup
docker-compose exec publishing-api rake db:environment:set
docker-compose exec publishing-api rake db:schema:load
