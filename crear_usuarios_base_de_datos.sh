CREATE USER 'write_update_read_user'@'localhost' IDENTIFIED BY 'enti';

GRANT INSERT, UPDATE, SELECT ON base_de_datos_de_la_muerte.users TO 'write_update_read_user'@'localhost';
