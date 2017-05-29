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