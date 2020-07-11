#!/usr/bin/env bash

docker-compose down && docker-compose up --build -d


sleep 1

docker exec -it mssql2017 bash -c "/opt/mssql-tools/bin/sqlcmd -U sa -P Test1!1234 '-Q drop database IF EXISTS loaderdb;create database loaderdb;' "
docker exec -it mssql2019 bash -c "/opt/mssql-tools/bin/sqlcmd -U sa -P Test1!1234 '-Q drop database IF EXISTS loaderdb;create database loaderdb;' "


docker logs -f liquibase