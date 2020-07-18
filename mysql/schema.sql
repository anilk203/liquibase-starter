CREATE USER 'loaderdbuser'@'localhost' IDENTIFIED BY 'loaderdbuser';
create database if not exists loaderdb;
GRANT ALL ON airflow_mdb.* TO 'loaderdb'@'localhost';
FLUSH PRIVILEGES;