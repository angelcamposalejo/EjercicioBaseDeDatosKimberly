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
insert into material(material_id,descr,cost,density)values
('ME','Metal','9.87','5.52'),
('PA','Paper','1.50','0.57'),
('PL','Plastic','2.50','1.82'),
('WL','Wool','7.50','0.28'),
('WO','Wood','3.53','0.79');
insert into item(name,heigth,width,depth,made_of,in_stock)values
('Bed','1','12','9','WL',121),
('Book','3','2','0.5','Pa',50),
('CD','5','6','0.5','PL',58),
('Chair','8','4','4','WO',77),
('Computer','2','1','11','ME',553),
('Picture','10','12','0.1','PA',92),
('Printer','2.2','1.6','1.4','PL',5),
('Speaker','2','1.5','4.7','WO',145),
('Table','12','3','4','WO',12),
('TV','2','7','5','PL',100);
SELECT 
    descr, cost, 0.1 * cost AS tax
FROM
    material;
SELECT 
    name, heigth * width * depth AS volumen
FROM
    item
WHERE
    heigth * width * depth > '100.00';
    
SELECT 
    a.name,
    a.heigth * a.width * a.depth AS volumen,
    b.descr AS material
FROM
    item a,
    material b
WHERE
    a.made_of = b.material_id
ORDER BY a.name ASC;

SELECT 
    a.name, (a.heigth * a.width * a.depth) * b.density AS weigth
FROM
    item a,
    material b
WHERE
    a.made_of = b.material_id
ORDER BY a.name ASC;
SELECT 
    a.name, (a.heigth * a.width * a.depth) * b.density*b.cost AS price
FROM
    item a,
    material b
WHERE
    a.made_of = b.material_id
ORDER BY a.name ASC;
SELECT 
    name, heigth, heigth % 5 AS remainder
FROM
    item;
SELECT 
    name, in_stock
FROM
    item
WHERE
    in_stock % 2 = 0;
SELECT 
    name, heigth, width, POWER(heigth, 2) AS evaluator
FROM
    item;
SELECT 
    descr,
    cost,
    ROUND(cost, 0) AS redondo,
    density,
    ROUND(density, 1) AS dens
FROM
    material;
SELECT 
    descr,
    cost,
    TRUNCATE(cost, 0) AS redondo,
    density,
    TRUNCATE(density, 1) AS dens
FROM
    material;
SELECT 
    '0.14678' * density AS x,
    ROUND('0.14678' * density, 2) AS round_x
FROM
    material;
SELECT 
    2.2 * density AS x, FLOOR(2.2 * density) AS floor_x
FROM
    material;
