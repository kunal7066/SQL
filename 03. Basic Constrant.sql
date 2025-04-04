#MySQL Constraints

NOT NULL
CHECK
DEFAULT
PRIMARY KEY
AUTO_INCREMENT  -- it will not use without key column
UNIQUE
INDEX
ENUM
FOREIGN KEY

use test ;


#NOT NULL Constraint

CREATE TABLE Student(
Id INTEGER, 
LastName TEXT NOT NULL, 
FirstName TEXT , 
City VARCHAR(35)
);

INSERT INTO Student VALUES(1, 'Hanks', 'Peter', 'New York');  

INSERT INTO Student VALUES(2, NULL, 'Amanda', 'Florida');

INSERT INTO Student VALUES(3, "lee", 'Amanda', null);


#UNIQUE Constraint

CREATE TABLE ShirtBrands(
Id INTEGER, 
BrandName VARCHAR(40) UNIQUE, 
Size VARCHAR(30)
);

INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Pantaloons', 38), (2, 'Cantabil', 40);  

INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Raymond', 38), (2, 'Cantabil', 40); 


#CHECK Constraint
#CHECK (expression) 
 
CREATE TABLE Persons (  
    ID int unique,  
    `Name` varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);

INSERT INTO Persons(Id, `Name`, Age)   
VALUES (1,'Robert', 28), (2, 'Joseph', 35), (3, 'Peter', 20); 


-- DEFAULT Constraint

CREATE TABLE Persons1 (  
    ID int unique,  
    `Name` varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
);  

INSERT INTO Persons1(Id, `Name`, Age, City)   
VALUES (4,'Robert', 15, null),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska'); 

INSERT INTO Persons1(Id, `Name`, Age) VALUES (5,'Brayan', 15); 

select * from persons1 ;


#AUTO_INCREMENT Constraint

CREATE TABLE Animals(  
id int AUTO_INCREMENT,   
`name` CHAR(30) NOT NULL,   
PRIMARY KEY (id));  

INSERT INTO Animals (`name`) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich'); 

INSERT INTO Animals (id, `name`) VALUES   
(90, 'Tiger') ;

SELECT * FROM Animals;


#ENUM Constraint

CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    `name` VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')  );  

INSERT INTO Shirts(id, `name`, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large'),
(4, 'formal-shirt', null); 

select * from shirts ;


CREATE TABLE Student2(
Id INT auto_increment primary key, 
LastName varchar(20) not null, 
FirstName varchar(20) not null , 
City VARCHAR(35) not null check(city = "nagpur"),
contact bigint not null ,
email varchar(20) not null unique,
subj enum("math", "science", "English") default "science"
);


desc student2 ;





