#!/usr/bin/env bash

echo "Perform migration begin"

echo $1
echo $2
echo $3
echo $4
 
GIT_REPO="${1}"
GIT_REPO_NAME=$2
GIT_TAG=$3
DB_PROPS_FILE=$4 

cd /opt/ 
git clone $GIT_REPO $GIT_REPO_NAME
cd $GIT_REPO_NAME 

git checkout tags/$GIT_TAG

ls -altr


/liquibase/liquibase --classpath='/liquibase/lib' --changeLogFile='/opt/liquibase-database-scripts/liquibase-change-log-files/liquibase-starter-dbchangelog-master.xml' --defaultsFile='/liquibase/lib/liquibase-starter-2017.properties' --logLevel=Info update
/liquibase/liquibase --classpath='/liquibase/lib' --changeLogFile='/opt/liquibase-database-scripts/liquibase-change-log-files/liquibase-starter-dbchangelog-master.xml' --defaultsFile='/liquibase/lib/liquibase-starter-2019.properties' --logLevel=Info update 

echo "Perform migration end"
