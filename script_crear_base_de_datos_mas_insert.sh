CREATE DATABASE IF NOT EXISTS mydatabase;
USE mydatabase;

CREATE TABLE IF NOT EXISTS users (
  id_user        INT(11)      NOT NULL AUTO_INCREMENT,
  username       VARCHAR(32)  NOT NULL UNIQUE,
  password	 VARCHAR(32)  NOT NULL,
  password_hash_md5  VARCHAR(128) NOT NULL,
  email          VARCHAR(100) NOT NULL UNIQUE,
  first_name     VARCHAR(64)  NOT NULL,
  last_name      VARCHAR(64)  NOT NULL,
  date_of_birth  DATE         NOT NULL,
  created_at     DATETIME     NOT NULL
  PRIMARY KEY (id)
);

INSERT INTO users (username, root, password_hash_md5, email, first_name, last_name, date_of_birth)
VALUES ('root', '63a9f0ea7bb98050796b649e85481845', 'root@gmail.com', 'Mr', 'Musgo', '1990-01-01');

