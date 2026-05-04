DROP DATABASE test;
CREATE DATABASE test;

USE test;

CREATE TABLE Students(
	id int primary key,
    name varchar(255)
);

CREATE TABLE Payments(
	id int primary key,
    price decimal,
    StudentsID int
);

INSERT INTO Students
VALUES(1,"Nguyen Van A"),
(2,"Nguyen Van B"),
(3,"Nguyen Van C"),
(4,"Nguyen Van D");

INSERT INTO Payments (id, price, StudentsID)
VALUES
(1, 100, 1),
(2, 200, 2),
(3, 150, 3);

SELECT *
FROM Students s
WHERE NOT EXISTS (
SELECT p.StudentsID FROM Payments p WHERE s.id = p.StudentsID
);
