--Steven Hulac
--CS 3810
--Fall 2017
--Homework #1

--2. (&3.) Designing the table
DROP TABLE Countries; --Just because I'm running this over and over
CREATE TABLE Countries (
country_name VARCHAR(20),
latitude float,
longitude float,
area INT,
population INT PRIMARY KEY,
gdp float,
gdpYear INT
);


--4a. Creating the borders table
DROP TABLE Borders;
CREATE TABLE Borders (
  country VARCHAR(20),
  border VARCHAR(20)
);

INSERT INTO Borders VALUES ('Germany',	'Austria');
INSERT INTO Borders VALUES ('Germany',	'Belgium');
INSERT INTO Borders VALUES ('Germany',	'Czechia');
--INSERT INTO Borders VALUES ('Germany',	'Denmark');
INSERT INTO Borders VALUES ('Germany',	'France');
INSERT INTO Borders VALUES ('Germany',	'Luxembourg');
INSERT INTO Borders VALUES ('Germany',	'Netherlands');
INSERT INTO Borders VALUES ('Germany',	'Poland');
INSERT INTO Borders VALUES ('Germany',	'Switzerland');
INSERT INTO Borders VALUES ('Netherlands',	'Belgium');
INSERT INTO Borders VALUES ('Netherlands',	'Germany');
INSERT INTO Borders VALUES ('Belgium',	'France');
INSERT INTO Borders VALUES ('Belgium',	'Germany');
INSERT INTO Borders VALUES ('Belgium',	'Luxembourg');
INSERT INTO Borders VALUES ('Belgium',	'Netherlands');
INSERT INTO Borders VALUES ('Luxembourg',	'Belgium');
INSERT INTO Borders VALUES ('Luxembourg',	'France');
INSERT INTO Borders VALUES ('Luxembourg',	'Germany');
--INSERT INTO Borders VALUES ('Poland',	'Belarus');
INSERT INTO Borders VALUES ('Poland',	'Czechia');
INSERT INTO Borders VALUES ('Poland',	'Germany');
--INSERT INTO Borders VALUES ('Poland',	'Lithuania');
--INSERT INTO Borders VALUES ('Poland',	'Russia');
--INSERT INTO Borders VALUES ('Poland',	'Slovakia');
--INSERT INTO Borders VALUES ('Poland',	'Ukraine');
INSERT INTO Borders VALUES ('Czechia',	'Austria');
INSERT INTO Borders VALUES ('Czechia',	'Germany');
INSERT INTO Borders VALUES ('Czechia',	'Poland');
--INSERT INTO Borders VALUES ('Czechia',	'Slovakia');
INSERT INTO Borders VALUES ('Austria',	'Czechia');
INSERT INTO Borders VALUES ('Austria',	'Germany');
INSERT INTO Borders VALUES ('Austria',	'Switzerland');
--INSERT INTO Borders VALUES ('Austria',	'Hungary');
--INSERT INTO Borders VALUES ('Austria',	'Italy');
--INSERT INTO Borders VALUES ('Austria',	'Lichtenstein');
--INSERT INTO Borders VALUES ('Austria',	'Slovakia');
--INSERT INTO Borders VALUES ('Austria',	'Slovenia');
--INSERT INTO Borders VALUES ('France',	'Andorra');
INSERT INTO Borders VALUES ('France',	'Belgium');
INSERT INTO Borders VALUES ('France',	'Germany');
--INSERT INTO Borders VALUES ('France',	'Italy');
INSERT INTO Borders VALUES ('France',	'Luxembourg');
--INSERT INTO Borders VALUES ('France',	'Monaco');
--INSERT INTO Borders VALUES ('France',	'Spain');
INSERT INTO Borders VALUES ('France',	'Switzerland');
INSERT INTO Borders VALUES ('Switzerland',	'Austria');
INSERT INTO Borders VALUES ('Switzerland',	'France');
INSERT INTO Borders VALUES ('Switzerland',	'Germany');
--INSERT INTO Borders VALUES ('Switzerland',	'Italy');
--INSERT INTO Borders VALUES ('Switzerland',	'Lichtenstein');

--4b Entering the data for the countries
INSERT INTO Countries VALUES ('Germany',  '51',	'9',	'357022',	'80594017',	'3979',	'2016');
INSERT INTO Countries VALUES ('Netherlands',	'52.3',	'5.45',	'41543',	'17084719',	'870.8',	'2016');
INSERT INTO Countries VALUES ('Belgium',	'50.5',	'4',	'30528',	'11491346',	'508.6',	'2016');
INSERT INTO Countries VALUES ('Luxembourg',	'49.45',	'6.1',	'2586',	'594130',	'58.74',	'2016');
INSERT INTO Countries VALUES ('Poland',	'52',	'20',	'312685',	'38476269',	'1052',	'2016');
INSERT INTO Countries VALUES ('Czechia',	'49.45',	'15.3',	'78867',	'10674723',	'350.9',	'2016');
INSERT INTO Countries VALUES ('Austria',	'47.2',	'13.2',	'83871',	'8754413',	'416.6',	'2016');
INSERT INTO Countries VALUES ('France',	'46',	'2',	'643801',	'67106161',	'2699',	'2016');
INSERT INTO Countries VALUES ('Switzerland',	'47',	'8',	'41277',	'8236303',	'496.3',	'2016');

SELECT *
INTO table2
FROM Countries INNER JOIN Borders
ON Countries.country_name = Borders.country;

--4c These are the countries which border Germany
SELECT * FROM Borders
WHERE country = 'Germany';

--4d These are the countries with population greather than 35 million
SELECT * FROM Countries
WHERE population > 35000000;

--4e These are the countries that satisfy both of the above criteria.
SELECT * FROM table2
WHERE population > 35000000
AND border = 'Germany';
