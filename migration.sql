CREATE DATABASE if not exists masks_db;
USE masks_db;


CREATE TABLE if not exists inventory
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    color    VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    print    VARCHAR(50) NOT NULL,
        primary key(id)
);

CREATE TABLE if not exists users
(
    id             INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name     VARCHAR(50)  NOT NULL,
    last_name      VARCHAR(50)  NOT NULL,
    email          VARCHAR(100) NOT NULL,
    contact_number INT UNSIGNED,
        primary key(id)
);

CREATE TABLE if not exists roles
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_role_name VARCHAR(50)  NOT NULL,
    primary key(id)
);

CREATE TABLE if not exists orders
(
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id         INT UNSIGNED NOT NULL,
    user_first_name VARCHAR(50)  NOT NULL,
    user_last_name  VARCHAR(50)  NOT NULL,
    primary key(id)
);