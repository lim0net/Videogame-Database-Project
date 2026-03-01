DROP TABLE Developers CASCADE CONSTRAINTS;
DROP TABLE Platforms CASCADE CONSTRAINTS;
DROP TABLE Games CASCADE CONSTRAINTS;
DROP TABLE GameSales CASCADE CONSTRAINTS;
DROP TABLE GameRatings CASCADE CONSTRAINTS;
DROP TABLE Players CASCADE CONSTRAINTS;
DROP TABLE Ownership CASCADE CONSTRAINTS;
DROP TABLE PlayerGameOwnership CASCADE CONSTRAINTS;

set linesize 120
set echo on
spool U:\VGDatabase\VGData.txt

CREATE TABLE Developers (
    DevID INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    yearFounded INT,
    Dcountry VARCHAR(50)
);

COMMIT;

CREATE TABLE Platforms (
    PlatID INT PRIMARY KEY,
    Gname VARCHAR(100) NOT NULL
);

COMMIT;

CREATE TABLE Games (
    GID INT PRIMARY KEY,
    Gname VARCHAR(100) NOT NULL,
    releaseDate DATE,
    Category VARCHAR(50),
    ESRB VARCHAR(5),
    PlatID INT,
    DevID INT,
    FOREIGN KEY (PlatID) REFERENCES Platforms(PlatID),
    FOREIGN KEY (DevID) REFERENCES Developers(DevID)
);

COMMIT;

CREATE TABLE GameSales (
    GID INT PRIMARY KEY,
    unitsSold DECIMAL(6,2),
    revenue DECIMAL(10,2),
    FOREIGN KEY (GID) REFERENCES Games(GID)
);

COMMIT;

CREATE TABLE GameRatings (
    GID INT PRIMARY KEY,
    Rating INT CHECK (Rating BETWEEN 1 AND 10),
    FOREIGN KEY (GID) REFERENCES Games(GID)
);

COMMIT;

CREATE TABLE Players (
    PlayID INT PRIMARY KEY,
    Pname VARCHAR(100),
    Age INT,
    PUser VARCHAR(50) UNIQUE,
    PCountry VARCHAR(50),
    TotalHoursPlayed INT
);

COMMIT;

CREATE TABLE Ownership (
    PlayID INT PRIMARY KEY,
    GamesOwned INT,
    FOREIGN KEY (PlayID) REFERENCES Players(PlayID)
);

COMMIT;

CREATE TABLE PlayerGameOwnership (
    PlayID INT,
    GID INT,
    PRIMARY KEY (PlayID, GID),
    FOREIGN KEY (PlayID) REFERENCES Players(PlayID),
    FOREIGN KEY (GID) REFERENCES Games(GID)
);

COMMIT;