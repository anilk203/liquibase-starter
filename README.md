# Step 1
###### Add SA_PASSWORD value in liquibase-starter.env

# Step 2

##### Add dbchangelog.xml files

```
cd $PROJECT/liquibase/changelog

```


# Step 3

##### Add liquibase.properties files
```
cd $PROJECT/liquibase/configs

```

# Step 4
```
docker-compose down && docker-compose up --build -d

docker exec -it mssql2017 bash -c "/opt/mssql-tools/bin/sqlcmd -U sa -P <SA_PASSWORD> '-Q drop database IF EXISTS liquibase-starter-db;create database liquibase-starter-db;' "
docker exec -it mssql2019 bash -c "/opt/mssql-tools/bin/sqlcmd -U sa -P <SA_PASSWORD> '-Q drop database IF EXISTS liquibase-starter-db;create database liquibase-starter-db;' "

```
