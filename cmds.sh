# via docker
# docker exec <process name> <command>
docker exec db_postgres psql -U user -d db_name  -c 'SELECT * FROM db_tbl;'

# via docker-compose
# docker-compose exec <service name> <command>
docker-compose exec db psql -U user -d db_name  -c 'SELECT * FROM db_tbl;'
