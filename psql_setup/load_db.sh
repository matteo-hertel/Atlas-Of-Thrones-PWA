curl -lsfO https://cdn.patricktriest.com/atlas-of-thrones/atlas_of_thrones.sql

docker exec -i -w /tmp/data -t $(docker ps -aqf "name=db_1") bash
# run `psql -d atlas_of_thrones < ./atlas_of_thrones.sql`

rm atlas_of_thrones.sql
