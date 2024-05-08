DROP DATABASE IF EXISTS RestaurantDB;
-- Deletes the database if there's one with the same name, that already exists --
CREATE DATABASE RestaurantDB;
-- DB creation --
USE RestaurantDB;
-- Will use the DB --

-- Tables creation --
CREATE TABLE Customer (
    customerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastNAME VARCHAR(100) NOT NULL,
    emial VARCHAR(80) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE Reservation (
    reservationID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dateStart DATETIME NOT NULL,
    dateEnd DATETIME NOT NULL,
    length VARCHAR(50) NOT NULL,
    guestAmount int NOT NULL,
    customerID int
)ENGINE = InnoDB;

CREATE TABLE Taable (
    tableID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- reservation BOOLEAN NOT NULL,
    capacity int NOT NULL,
    restaurantID int NOT NULL
)ENGINE = InnoDB;

CREATE TABLE TableReservation (
    tableID int NOT NULL,
    reservationID int NOT NULL,
    PRIMARY KEY (reservationID, tableID),
    FOREIGN KEY (reservationID) REFERENCES Reservation (reservationID),
    FOREIGN KEY (tableID) REFERENCES Taable (tableID)
)ENGINE = InnoDB;

CREATE TABLE Restaurant (
    restaurantID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    restaurantName VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    country VARCHAR(80) NOT NULL,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(80) NOT NULL,
    localNumber VARCHAR(10) NOT NULL,
    zipCode VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    openingHours VARCHAR(255) NOT NULL,
    regNo int NOT NULL
)ENGINE = InnoDB;

-- Joining tables --
ALTER TABLE Taable
ADD FOREIGN KEY (restaurantID) REFERENCES Restaurant (restaurantID);

ALTER TABLE Reservation
ADD FOREIGN KEY (customerID) REFERENCES Customer (customerID);

-- Inserting data into tables --
INSERT INTO Restaurant 
    (restaurantID, restaurantName, description, country, city, 
    street, localNumber, zipCode, phoneNumber, email, openingHours, regNo)
VALUES (
    NULL,
    "Holo Spice", 
    "Step into a world where culinary innovation meets the future. 
    Feast your eyes with vibrant, cutting-edge technology. 
    Immerse yourself in the fusion of Flavors and holograms! 
    and let our master chefs carefully craft dishes while you explore the virtual world.", 
    "Circutry",
    "Neon City", 
    "Lux Avenue", 
    "1039",
    "2077",
    "005667098767465",
    "HoloSpice@youshallnotpass.cc",
    "Monday: 15-24
    Tuesday: 15-24
    Wednesday: 15-24
    Thursday: 15-24
    Friday: 15-01
    Saturday: 15-01
    Sunday: 15-23",
    "77310"
);

INSERT INTO Taable (tableID, capacity, restaurantID) VALUES 
    (1, "18", 1),
    (2, "23", 1),
    (3, "13", 1),
    (4, "22", 1),
    (5, "5", 1),
    (6, "20", 1),
    (7, "11", 1),
    (8, "13", 1),
    (9, "5", 1),
    (10, "15", 1),
    (11, "12", 1),
    (12, "9", 1),
    (13, "19", 1),
    (14, "15", 1),
    (15, "12", 1),
    (16, "6", 1),
    (17, "2", 1),
    (18, "16", 1),
    (19, "25", 1),
    (20, "6", 1),
    (21, "3", 1),
    (22, "14", 1),
    (23, "13", 1),
    (24, "15", 1),
    (25, "17", 1),
    (26, "2", 1),
    (27, "8", 1),
    (28, "17", 1),
    (29, "25", 1),
    (30, "10", 1),
    (31, "5", 1),
    (32, "7", 1),
    (33, "24", 1),
    (34, "19", 1),
    (35, "2", 1),
    (36, "20", 1),
    (37, "19", 1),
    (38, "6", 1),
    (39, "5", 1),
    (40, "12", 1),
    (41, "2", 1),
    (42, "19", 1),
    (43, "25", 1),
    (44, "23", 1),
    (45, "19", 1),
    (46, "22", 1),
    (47,"6", 1),
    (48, "19", 1),
    (49,"2", 1),
    (50, "22", 1);

INSERT INTO Customer (customerID, firstName, lastNAME, emial, phoneNumber) VALUES 
    (1, 'Lyman', 'Dobrowlski', 'ldobrowlski0@ezinearticles.com', '869-301-3587'),
    (2, 'Mattie', 'Sloan', 'msloan1@economist.com', '195-453-8792'),
    (3, 'Latia', 'Dumingos', 'ldumingos2@gnu.org', '113-258-9501'),
    (4, 'Rabi', 'Loughnan', 'roloughnan3@apache.org', '146-462-7077'),
    (5, 'Adamo', 'Bryson', 'abryson4@usatoday.com', '833-138-8557'),
    (6, 'Fernande', 'Eade', 'feade5@vimeo.com', '672-547-8553'),
    (7, 'Jerrie', 'Deaves', 'jdeaves6@dagondesign.com', '137-896-9717'),
    (8, 'Even', 'Jouannisson', 'ejouannisson7@yellowbook.com', '203-193-4015'),
    (9, 'Zandra', 'Dawid', 'zdawid8@symantec.com', '625-389-7671'),
    (10, 'Ibrahim', 'Aingell', 'iaingell9@domainmarket.com', '946-811-9545'),
    (11, 'Nickolai', 'Henrot', 'nhenrota@businessinsider.com', '389-898-1287'),
    (12, 'Pace', 'Somerled', 'psomerledb@loc.gov', '913-410-7382'),
    (13, 'Shem', 'Domelaw', 'sdomelawc@patch.com', '730-198-1735'),
    (14, 'Garner', 'Dinning', 'gdinningd@netvibes.com', '962-769-4200'),
    (15, 'Sheff', 'Ibbotson', 'sibbotsone@abc.net.au', '668-619-1808'),
    (16, 'Crystie', 'Commusso', 'ccommussof@odnoklassniki.ru', '521-478-6104'),
    (17, 'Lucky', 'Helleckas', 'lhelleckasg@ucoz.ru', '259-599-5558'),
    (18, 'Ed', 'Bagshawe', 'ebagshaweh@paginegialle.it', '613-967-5426'),
    (19, 'Pietra', 'Penreth', 'ppenrethi@parallels.com', '423-274-5398'),
    (20, 'Inness', 'Risbridge', 'irisbridgej@clickbank.net', '433-478-6139');

INSERT INTO Reservation (reservationID, dateStart, dateEnd, length, guestAmount, customerID) VALUES 
    (1, '2024.2.16 15:30:00', '2024.2.16 18:30:00', 180, 18, "1"),
    (2, '2023.12.1 17:00:00', '2023.12.1 18:00:00', 60, 8, "2"),
    (3, '2024.2.25 20:00:00', '2024.2.25 21:30:00', 90, 27, "3"),
    (4, '2024.2.13 16:30:00', '2024.2.13 18:00:00', 90, 18, "4"),
    (5, '2023.12.28 22:00:00', '2023.12.28 23:30:00', 90, 18, "4"),
    (6, '2024.1.24 15:00:00', '2024.1.24 18:00:00', 180, 44, "5"),
    (7, '2024.2.5 21:30:00', '2024.2.5 22:30:00', 60, 1, "6"),
    (8, '2024.2.24 17:30:00', '2024.2.24 19:00:00', 90, 21, "7"),
    (9, '2024.1.14 16:15:00', '2024.1.14 17:45:00', 90, 21, "8"),
    (10, '2024.1.29 15:00:00', '2024.1.29 16:30:00', 90, 49, "9"),
    (11, '2024.2.18 15:30:00', '2024.2.18 18:30:00', 180, 38, "10"),
    (12, '2024.1.18 17:45:00', '2024.1.18 19:15:00', 90, 22, "11"),
    (13, '2023.11.30 20:00:00', '2023.11.30 21:30:00', 90, 25, "12"),
    (14, '2024.1.25 15:30:00', '2024.1.25 17:00:00', 90, 1, "13"),
    (15, '2023.10.22 20:00:00', '2023.10.22 21:30:00', 90, 16, "14"),
    (16, '2023.11.28 15:00:00', '2023.11.28 16:30:00', 90, 29, "15"),
    (17, '2023.12.24 15:30:00', '2023.12.24 16:30:00', 60, 7, "16"),
    (18, '2024.2.17 15:00:00', '2024.2.17 16:30:00', 90, 6, "17"),
    (19, '2024.1.8 16:30:00', '2024.1.8 17:30:00', 60, 2, "18"),
    (20, '2024.1.8 20:00:00', '2024.1.8 23:00:00', 180, 12, "19"),
    (21, '2023.12.15 15:30:00', '2023.12.15 18:30:00', 180, 3, "20");

INSERT INTO TableReservation (reservationID, tableID) Values (1, 1);
INSERT INTO TableReservation (reservationID, tableID) Values (2, 12);
INSERT INTO TableReservation (reservationID, tableID) Values (3, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (4, 13);
INSERT INTO TableReservation (reservationID, tableID) Values (5, 13);
INSERT INTO TableReservation (reservationID, tableID) Values (6, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (6, 6);
INSERT INTO TableReservation (reservationID, tableID) Values (7, 17);
INSERT INTO TableReservation (reservationID, tableID) Values (8, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (9, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (10, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (10, 22);
INSERT INTO TableReservation (reservationID, tableID) Values (11, 13);
INSERT INTO TableReservation (reservationID, tableID) Values (11, 6);
INSERT INTO TableReservation (reservationID, tableID) Values (12, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (13, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (14, 17);
INSERT INTO TableReservation (reservationID, tableID) Values (15, 25);
INSERT INTO TableReservation (reservationID, tableID) Values (16, 19);
INSERT INTO TableReservation (reservationID, tableID) Values (16, 5);
INSERT INTO TableReservation (reservationID, tableID) Values (17, 12);
INSERT INTO TableReservation (reservationID, tableID) Values (18, 20);
INSERT INTO TableReservation (reservationID, tableID) Values (19, 17);
INSERT INTO TableReservation (reservationID, tableID) Values (20, 23);
INSERT INTO TableReservation (reservationID, tableID) Values (21, 21);

