-- Creating the Database

CREATE DATABASE TouristAttractions;

USE TouristAttractions;

-- Creating Tables

CREATE TABLE Countries (
    CountryId INT PRIMARY KEY AUTO_INCREMENT,
    CountryName VARCHAR(100) NOT NULL,
    Continent VARCHAR(100) NOT NULL
);


CREATE TABLE Attractions (
    AttractionId INT PRIMARY KEY AUTO_INCREMENT ,
    AttractionName VARCHAR(100) NOT NULL,
    CountryId INT NOT NULL,
    AttractionType VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    OpeningYear INT NOT NULL,
    FOREIGN KEY (CountryId) REFERENCES Countries(CountryId)
);


CREATE TABLE Visitors (
    VisitorId INT PRIMARY KEY AUTO_INCREMENT,
    AttractionId INT NOT NULL,
    VisitDate YEAR NOT NULL,
    VisitorCount BIGINT NOT NULL,
    FOREIGN KEY (AttractionId) REFERENCES Attractions(AttractionId)
);


CREATE TABLE Ratings (
	RatingId INT PRIMARY KEY AUTO_INCREMENT,
    AttractionId INT NOT NULL,
    RatingScore DECIMAL(2,1) NOT NULL,
    RatingDate YEAR NOT NULL,
    FOREIGN KEY (AttractionId) REFERENCES Attractions(AttractionId)
);


-- Inserting Operations


INSERT INTO Countries (CountryName,Continent)
VALUES	("USA","North America"),
		("France","Europe"),
		("Spain","Europe"),
        ("Italy","Europe"),
        ("Turkey","Asia"),
        ("Mexico","North America"),
        ("South Africa","Africa"),
        ("Japan","Asia"),
        ("Egypt","Africa"),
        ("Russia","Asia");


INSERT INTO Attractions (AttractionName,CountryId,AttractionType,Location,OpeningYear)
VALUES	("Central Park",1,"Park","New York",1857),
		("Venice Beach",1,"Beach","California",1905),
        ("Eiffel Tower",2,"Landmark","Paris",1889),
        ("Puy du Fou",2,"Park","Les Epesses",1978),
        ("Basílica de la Sagrada Familia",3,"Religious Site","Barcelona",1882),
        ("Real Alcazar de Sevilla",3,"Palace","Sevilla",1492),
        ("Trevi Fountain",4,"Landmark","Rome",1762),
        ("Cathedral of Santa Maria del Fiore",4,"Religious Site","Florence",1436),
        ("Ephesus Archaeological Site",5,"Archaeologial Site","İzmir",1963),
        ("Göbeklitepe",5,"Archaeologial Site","Şanlıurfa",1994),
        ("Chichen Itza",6,"Archaeological Site","Yucatán",1896),
        ("Cancún",6,"Beach","Cancún",1975),
        ("Kruger National Park",7,"Park","Mpumalanga",1926),
        ("Table Mountain",7,"Landmark","Cape Town",1929),
        ("Mount Fuji",8,"Landmark","Tokyo",1863),
        ("Arashiyama Bamboo Grove",8,"Landmark","Kyoto",1967),
        ("Pyramids of Giza",9,"Archaeological Site","Cairo",1876),
        ("Karnak Temple",9,"Archaeological Site","Luxor",1989),
        ("The Red Square",10,"Landmark","Moscow",1825),
        ("Hermitage Museum",10,"Museum","St. Petersburg",1852);
        
        
INSERT INTO Visitors (AttractionId, VisitDate, VisitorCount)
VALUES
		(1, 2017, 5000000),
		(1, 2018, 6200000),
		(1, 2019, 3400000),
		(1, 2020, 1500000),
		(1, 2021, 3000000),

		(2, 2017, 3500000),
		(2, 2018, 3600000),
		(2, 2019, 3800000),
		(2, 2020, 1000000),
		(2, 2021, 1600000),

		(3, 2017, 7000000),
		(3, 2018, 7200000),
		(3, 2019, 7500000),
		(3, 2020, 3000000),
		(3, 2021, 5000000),

		(4, 2017, 2200000),
		(4, 2018, 2300000),
		(4, 2019, 2400000),
		(4, 2020, 700000),
		(4, 2021, 1200000),

		(5, 2017, 4500000),
		(5, 2018, 4700000),
		(5, 2019, 4900000),
		(5, 2020, 2000000),
		(5, 2021, 3000000),

		(6, 2017, 1600000),
		(6, 2018, 1700000),
		(6, 2019, 1800000),
		(6, 2020, 500000),
		(6, 2021, 800000),

		(7, 2017, 3000000),
		(7, 2018, 3200000),
		(7, 2019, 3400000),
		(7, 2020, 1200000),
		(7, 2021, 1800000),

		(8, 2017, 2500000),
		(8, 2018, 2600000),
		(8, 2019, 2800000),
		(8, 2020, 800000),
		(8, 2021, 1200000),

		(9, 2017, 4000000),
		(9, 2018, 4200000),
		(9, 2019, 4400000),
		(9, 2020, 1500000),
		(9, 2021, 2500000),

		(10, 2017, 3500000),
		(10, 2018, 3700000),
		(10, 2019, 3900000),
		(10, 2020, 1000000),
		(10, 2021, 1500000),
        
		(11, 2017, 2600000),
		(11, 2018, 2700000),
		(11, 2019, 2900000),
		(11, 2020, 800000),
		(11, 2021, 1200000),

		(12, 2017, 1550000),
		(12, 2018, 1650000),
		(12, 2019, 1730000),
		(12, 2020, 500000),
		(12, 2021, 800000),

		(13, 2017, 1800000),
		(13, 2018, 1900000),
		(13, 2019, 2000000),
		(13, 2020, 500000),
		(13, 2021, 1200000),

		(14, 2017, 1200000),
		(14, 2018, 1300000),
		(14, 2019, 1400000),
		(14, 2020, 400000),
		(14, 2021, 800000),

		(15, 2017, 4000000),
		(15, 2018, 4200000),
		(15, 2019, 4500000),
		(15, 2020, 1000000),
		(15, 2021, 1500000),

		(16, 2017, 1600000),
		(16, 2018, 1800000),
		(16, 2019, 2000000),
		(16, 2020, 600000),
		(16, 2021, 900000),

		(17, 2017, 4700000),
		(17, 2018, 5800000),
		(17, 2019, 6000000),
		(17, 2020, 2500000),
		(17, 2021, 4500000),

		(18, 2017, 4000000),
		(18, 2018, 4500000),
		(18, 2019, 5000000),
		(18, 2020, 1500000),
		(18, 2021, 2000000),

		(19, 2017, 2500000),
		(19, 2018, 2700000),
		(19, 2019, 2900000),
		(19, 2020, 800000),
		(19, 2021, 1200000),

		(20, 2017, 4100000),
		(20, 2018, 4200000),
		(20, 2019, 4800000),
		(20, 2020, 1000000),
		(20, 2021, 2000000);
        

INSERT INTO Ratings (AttractionId, RatingDate, RatingScore)
VALUES
		(1, 2017, 4),
		(1, 2018, 4),
		(1, 2019, 4),
		(1, 2020, 4),
		(1, 2021, 4),

		(2, 2017, 4),
		(2, 2018, 4),
		(2, 2019, 4),
		(2, 2020, 4),
		(2, 2021, 3), 

		(3, 2017, 5),
		(3, 2018, 5),
		(3, 2019, 5),
		(3, 2020, 3), 
		(3, 2021, 4),

		(4, 2017, 4),
		(4, 2018, 4),
		(4, 2019, 4),
		(4, 2020, 3), 
		(4, 2021, 4),

		(5, 2017, 5),
		(5, 2018, 5),
		(5, 2019, 5),
		(5, 2020, 5),
		(5, 2021, 3), 

		(6, 2017, 4),
		(6, 2018, 4),
		(6, 2019, 4),
		(6, 2020, 3), 
		(6, 2021, 4),

		(7, 2017, 5),
		(7, 2018, 5),
		(7, 2019, 5),
		(7, 2020, 5),
		(7, 2021, 5),

		(8, 2017, 4),
		(8, 2018, 4),
		(8, 2019, 4),
		(8, 2020, 4),
		(8, 2021, 3), 

		(9, 2017, 4),
		(9, 2018, 4),
		(9, 2019, 4),
		(9, 2020, 5),
		(9, 2021, 5),

		(10, 2017, 3),
		(10, 2018, 3),
		(10, 2019, 4),
		(10, 2020, 2),
		(10, 2021, 3),
        
        (11, 2017, 4.6),
		(11, 2018, 4.7),
		(11, 2019, 4.8),
		(11, 2020, 4.5),
		(11, 2021, 4.7),

		(12, 2017, 4.4),
		(12, 2018, 4.5),
		(12, 2019, 4.6),
		(12, 2020, 4.3),
		(12, 2021, 4.5),

		(13, 2017, 4.5),
		(13, 2018, 4.6),
		(13, 2019, 4.7),
		(13, 2020, 4.2),
		(13, 2021, 4.5),

		(14, 2017, 4.7),
		(14, 2018, 4.8),
		(14, 2019, 4.9),
		(14, 2020, 4.4),
		(14, 2021, 4.6),

		(15, 2017, 4.6),
		(15, 2018, 4.7),
		(15, 2019, 4.8),
		(15, 2020, 4.3),
		(15, 2021, 4.5),

		(16, 2017, 4.5),
		(16, 2018, 4.6),
		(16, 2019, 4.7),
		(16, 2020, 4.2),
		(16, 2021, 4.4),

		(17, 2017, 4.4),
		(17, 2018, 4.5),
		(17, 2019, 4.6),
		(17, 2020, 4.0),
		(17, 2021, 4.3),

		(18, 2017, 4.5),
		(18, 2018, 4.6),
		(18, 2019, 4.7),
		(18, 2020, 4.2),
		(18, 2021, 4.4),

		(19, 2017, 4.7),
		(19, 2018, 4.8),
		(19, 2019, 4.9),
		(19, 2020, 4.4),
		(19, 2021, 4.6),

		(20, 2017, 4.7),
		(20, 2018, 4.8),
		(20, 2019, 4.9),
		(20, 2020, 4.3),
		(20, 2021, 4.5);
        
        
        




        




