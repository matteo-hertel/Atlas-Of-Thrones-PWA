#!/bin/bash
set -e
npm i
npm run build
docker-compose up -d
(cd psql_setup && curl -lsfO https://cdn.patricktriest.com/atlas-of-thrones/atlas_of_thrones.sql)
docker exec -it --privileged $(docker ps -qf "name=db")  /var/init/load_db.sh
