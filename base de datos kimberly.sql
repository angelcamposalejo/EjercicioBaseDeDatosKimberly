CREATE DATABASE kimberly;
USE kimberly;
CREATE TABLE material (
    material_id VARCHAR(10) NOT NULL PRIMARY KEY,
    descr VARCHAR(50) NOT NULL,
    cost DOUBLE NOT NULL,
    density DOUBLE NOT NULL
);
CREATE TABLE item (
    item_id INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    heigth DOUBLE NOT NULL,
    width DOUBLE NOT NULL,
    depth DOUBLE NOT NULL,
    made_of VARCHAR(10) NOT NULL,
    in_stock INT(10) NOT NULL,
    FOREIGN KEY (made_of)
        REFERENCES material (material_id)
);
