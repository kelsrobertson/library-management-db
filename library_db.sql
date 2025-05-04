# One-to-many relationship
CREATE DATABASE library_db;
USE library_db;

CREATE TABLE Author ( 
	Passport_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100),
    sex VARCHAR(10),
    dob DATE,
    age INT, 
    email VARCHAR(100)
);

CREATE TABLE Reader (
	Reader_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100),
    sex VARCHAR(10),
    idcard INT,
    age INT, 
    email VARCHAR(100)
);

CREATE TABLE Book (
	Book_ID INT AUTO_INCREMENT PRIMARY KEY,
	Title VARCHAR(150) NOT NULL,
	Passport_ID INT,
	FOREIGN KEY (Passport_ID) REFERENCES Author(Passport_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Checkout (
	Checkout_ID INT AUTO_INCREMENT PRIMARY KEY,
	Book_ID INT,
	Reader_ID INT,
	FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Reader_ID) REFERENCES Reader(Reader_ID)
		ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Author(name, surname, sex, dob, age, email) 
VALUES 
('William', 'Shakespeare', 'Male', '1564-04-23', 52, 'william.shakes@gmail.com'),
('Colleen', 'Hoover', 'Female', '1979-12-11', 44, 'hoover.c.79@gmail.com'),
('Edgar', 'Poe', 'Male', '1809-01-19', 40, 'edgar.allen.poe@gmail.com');

INSERT INTO Reader(name, surname, sex, idcard, age, email) 
VALUES 
('Olivia', 'Johnson', 'Female', 1253, 30, 'olivia.johnson@gmail.com'),
('Ethan', 'Martinez', 'Male', 6548, 22, 'ethan.martinez@gmail.com'),
('Lucas', 'Brown', 'Male', 9258, 45, 'lucas.brown@gmail.com');

INSERT INTO Book (Title, Passport_ID) 
VALUES 
('Hamlet', 1), 
('It Ends with Us', 2), 
('The Raven', 3);

INSERT INTO Checkout (Book_ID, Reader_ID) 
VALUES 
(1, 1),  
(1, 2),  
(1, 3),  
(2, 1),  
(2, 2),  
(2, 3),  
(3, 1),  
(3, 2), 
(3, 3); 

SELECT * from Author;

SELECT * FROM Reader;

SELECT * FROM Book;
