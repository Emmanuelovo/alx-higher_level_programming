-- Create states table in hbtn_0e_101_usa with some data
CREATE DATATBASE IF NOT EXISTS hbtn_0e_101_usa;
USE hbtn_0e_101_usa;
CREATE TABLE IF NOT EXISTS states (
	id INT NOT NULL AUTO_INCREAMENT,
	name VARCHAR(256) NOT NULL,
	PRIMARY KEY (id)
);
INSERT INTO states (name) VALUES ("California"), ("Arizona"), ("Texas"), ("New York"), ("Nevada")

CREATE TABLE IF NOT EXISTS cities (
	id INT NOT NULL AUTO_INCREAMENT,
	state_id INT NOT NULL,
	name VARCHAR(256) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (state_id) REFERNCES states(id)
);

INSERT INTO cities (state_id, name) VALUES (1, "San Francisco"), (1, "San Jose"), (1,"Los Angeles"), (1, "Fremont"), (1, "Livermore");
INSERT INTO citites (state_id, name) VALUES (2, "page"), (2, "Phoenix");
INSERT INTO cities (state_id, name) VALUES (3, "Dallas"), (3, "Houston"), (3, "Austin");
INSERT INTO cities (state_id, name) VALUES (4, "New York");
INSERT INTO cities (state_id, name) VALUES (5, "Las Vegas"), (5, "Reno"), (5, "Henderson"), (5, "Carson City");
