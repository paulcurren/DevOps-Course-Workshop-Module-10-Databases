docker build . -t module-10

docker run -d -p 1433:1433 -e "SA_PASSWORD=Password123!" -e "ACCEPT_EULA=Y" --name module-10-container module-10

:: Wait for the database to become available
docker exec -it module-10-container ./wait-for-it.sh localhost:1433 --timeout=30
docker exec -it module-10-container sleep 5s

docker exec -it module-10-container /opt/mssql-tools/bin/sqlcmd -S localhost,1433 -U sa -P Password123! -i ./db_schema.sql

docker exec -it module-10-container /opt/mssql-tools/bin/sqlcmd -S localhost,1433 -U sa -P Password123! -i ./db_data.sql
    
