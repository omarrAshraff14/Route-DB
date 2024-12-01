CREATE DATABASE store_management;

CREATE TABLE governorates(
    `id` int(11) not null AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(255) not null
    )
    
CREATE TABLE stores(
    `id` int(11)  PRIMARY KEY not null AUTO_INCREMENT ,
    `name` varchar(255) not null,
    `address` varchar(255) not null
    );
    CREATE TABLE  governorate_stores(
        `id` int(11) unsigned PRIMARY KEY not null AUTO_INCREMENT ,
        `governorate_id` int(11) not null,
        `store_id` int(11) not null ,
        CONSTRAINT relation_one
        FOREIGN KEY (`governorate_id`) REFERENCES governorates(`id`) on update cascade on delete cascade,
        CONSTRAINT relation_two
        FOREIGN KEY (`store_id`) REFERENCES stores(`id`) on update cascade on delete cascade
        )

        CREATE TABLE supplier(
    `id` int(11) PRIMARY KEY not null AUTO_INCREMENT ,
    `name` varchar(255) not null,
    `phone` varchar(15) not null,
    `email` varchar(255),
    `pref_data` text
    )

    CREATE TABLE products(
    `id` int(11) PRIMARY KEY not null AUTO_INCREMENT ,
    `name` varchar(255) not null ,
    `code` varchar(50) not null UNIQUE,
    `description` text,
    `price` DECIMAL(10, 2) not null,
    `store_id` int(11) not null,
    `supplier_id` int(11) not null,
    FOREIGN KEY(`store_id`) REFERENCES stores(`id`) on update cascade on delete cascade ,
    FOREIGN KEY(`supplier_id`) REFERENCES supplier(`id`) on update cascade on delete cascade
    )
     