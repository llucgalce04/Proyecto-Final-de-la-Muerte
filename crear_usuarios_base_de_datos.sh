CREATE USER 'write_update_read_user'@'localhost' IDENTIFIED BY 'enti';

GRANT INSERT, UPDATE, SELECT ON usersdatabase.users TO 'write_update_read_user'@'localhost';
