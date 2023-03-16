CREATE TABLE flightss(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    origin TEXT NOT NULL,
    destination TEXT NOT NULL,
    duration INTEGER NOT NULL
);

INSERT INTO flightss (origin, destination, duration) VALUES ("New York", "London", 415);
INSERT INTO flightss (origin, destination, duration) VALUES ("Shanghai", "Paris", 760);
INSERT INTO flightss (origin, destination, duration) VALUES ("Istanbul", "Tokyo", 700);
INSERT INTO flightss (origin, destination, duration) VALUES ("New York", "Paris", 435);
INSERT INTO flightss (origin, destination, duration) VALUES ("Moscow", "Paris", 245);
INSERT INTO flightss (origin, destination, duration) VALUES ("Lima", "New York", 455);


SELECT * FROM flightss;

SELECT * FROM flightss WHERE origin = "New York";

SELECT * FROM flightss WHERE duration > 500;

SELECT * FROM flightss WHERE origin LIKE "%a%";

UPDATE flightss 
    SET duration = 430
    WHERE origin = "New York"
    AND destination = "London";

SELECT * FROM flightss; 

DELETE FROM flightss WHERE destination = "Tokyo"