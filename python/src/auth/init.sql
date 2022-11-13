CREATE USER 'auth_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Aauth123456' ;

CREATE DATABASE auth ;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost' ;

USE auth ;

CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
) ;

INSERT INTO user(email, password) VALUES ('shashi@gmail.com', 'shashi@123') ;