DROP DATABASE IF EXISTS usersdatabase;
CREATE DATABASE usersdatabase;
USE usersdatabase;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id_user INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
username       VARCHAR(50)  NOT NULL,
password       VARCHAR(32)  NOT NULL,
password_hash_md5  VARCHAR(128) NOT NULL,
first_name     VARCHAR(50)  NOT NULL,
last_name      VARCHAR(50)  NOT NULL,
email          VARCHAR(100) NOT NULL,
date_of_birth  DATE         NOT NULL
);

INSERT INTO users (username, password, password_hash_md5, first_name, last_name,  email, date_of_birth)
VALUES ("root", "root", "63a9f0ea7bb98050796b649e85481845", "Mr", "Musgo", "root@gmail.com", "1990-01-01");

