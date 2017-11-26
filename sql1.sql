CREATE DATABASE sql1;

CREATE TABLE sql1.tableA(
    tableA_ID int(10) NOT NULL AUTO_INCREMENT,
    tableA_Fname varchar(15) NOT NULL,
	tableA_Lname varchar(15) NOT NULL,
    PRIMARY KEY (tableA_ID)
);

CREATE TABLE sql1.tableB(
    tableB_ID int(10) NOT NULL AUTO_INCREMENT,
	tableA_ID int(10) NOT NULL,
    tableB_Fname varchar(15) NOT NULL,
	tableB_Lname varchar(15) NOT NULL,
    PRIMARY KEY (tableB_ID),
    FOREIGN KEY (tableA_ID) REFERENCES tableA (tableA_ID)
);

INSERT INTO sql1.tableA (tableA_Fname,tableA_Lname) VALUES 
('chris','dalamitras'),
('agishlaos','georgoylias'),
('angel','agiorgiths'),
('swkraths','saxarakis'),
('chris','dimitrioy'),
('nikos','kolitsas'),
('labis','anastopoylos');


INSERT INTO sql1.tableB (tableA_ID,tableB_Fname,tableB_Lname) VALUES 
(3,'gal','gadot'),
(2,'scarlett','johansson'),
(1,'cristina','scabbia'),
(3,'jaina','proudmoore'),
(6,'ivanka','trump'),
(1,'nina','williams'),
(2,'sasha','grey');

use sql1;

SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
LEFT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID;

SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
RIGHT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID;

SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
LEFT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID
UNION
SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
RIGHT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID;

SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
LEFT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID
UNION ALL
SELECT tableA_Fname, tableA_Lname, tableB_Fname, tableB_Lname
FROM tableA
RIGHT JOIN tableB ON tableA.tableA_ID = tableB.tableA_ID;


