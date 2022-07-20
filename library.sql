CREATE TABLE Books_jv(
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INTEGER
) 
CREATE TABLE Users_jv(
    Id INT PRIMARY KEY,
    fName TEXT,
    lName TEXT,
    email VARCHAR(100) UNIQUE NOT NULL
)
CREATE TABLE CheckOut_jv(
    Id INT PRIMARY KEY,
    BookId INT, 
    UserId INT,
    CheckOutDates TEXT,
    ReturnDate DATETIME,
    FOREIGN KEY (BookId) REFERENCES Books_jv(Id),
    FOREIGN KEY (UserId) REFERENCES Users_jv(Id)
)

INSERT INTO Books_jv(Id, Title, Genre, Author)
VALUE (1, "The Old Man and The Sea", "Fiction", "Ernest Hemingway")

SELECT * FROM Books_jv

UPDATE Books_jv
SET Qty = 1000
WHERE id = 1

INSERT INTO Books_jv
VALUE
(2, "Tuesday with Maury", "Fiction", "Mitch Albom", 2000),
(3, "Rich Dad Poor Dad", "Self Help", "Robert Kiyoski", 100),
(4, "Captain Under pants", "Fiction", "Some Guy", 10),
(5, "Tales of 2 Cities", "Fiction", "Charles Dickens", 1)

SELECT Title 
FROM Books_jv
WHERE Genre = 'Fiction'

SELECT Title
FROM Books_jv
WHERE Genre in ('Fiction','Self Help')