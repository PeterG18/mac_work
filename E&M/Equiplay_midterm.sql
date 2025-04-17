-- Create the database
CREATE DATABASE Equiplay;

-- Use the database
USE Equiplay;

-- Create the PlayerProfile table
CREATE TABLE PlayerProfile (
    athlete_id INT PRIMARY KEY,
    athlete_name VARCHAR(100),
    age INT,
    hometown VARCHAR(100),
    position VARCHAR(50),
    skin_race VARCHAR(50)
);

-- Create the PlayerPerformance table
CREATE TABLE PlayerPerformance (
    performance_id INT PRIMARY KEY,
    athlete_id INT,
    goals INT,
    assists INT,
    games INT
);

-- Create the InjuryReport table
CREATE TABLE InjuryReport (
    injury_id INT PRIMARY KEY,
    athlete_id INT,
    injury_type VARCHAR(100)
);

-- Create the NIL_deals table
CREATE TABLE NIL_deals (
    deal_id INT PRIMARY KEY,
    city_state VARCHAR(100),
    company VARCHAR(100),
    athlete_id INT
);

-- Insert data into PlayerProfile
INSERT INTO PlayerProfile (athlete_id, athlete_name, age, hometown, position, skin_race) VALUES (1, 'Joao Pedro', 20, 'Lisbon, Portugal ', 'Forward', 'white');
INSERT INTO PlayerProfile (athlete_id, athlete_name, age, hometown, position, skin_race) VALUES (2, 'Cole Palmer', 19, 'London, England', 'Midfielder', 'white');
INSERT INTO PlayerProfile (athlete_id, athlete_name, age, hometown, position, skin_race) VALUES (3, 'Cris Davis', 20, 'Bowie, Maryland', 'Midfielder', 'black');
INSERT INTO PlayerProfile (athlete_id, athlete_name, age, hometown, position, skin_race) VALUES (4, 'Coby Maino', 19, 'London, England', 'Midfielder', 'black');
INSERT INTO PlayerProfile (athlete_id, athlete_name, age, hometown, position, skin_race) VALUES (5, 'Malo Gusto', 18, 'London, England', 'Defender', 'white');

-- Insert data into PlayerPerformance
INSERT INTO PlayerPerformance (performance_id, athlete_id, goals, assists, games) VALUES (1, 1, 6, 3, 9);
INSERT INTO PlayerPerformance (performance_id, athlete_id, goals, assists, games) VALUES (2, 2, 5, 7, 9);
INSERT INTO PlayerPerformance (performance_id, athlete_id, goals, assists, games) VALUES (3, 3, 3, 8, 9);
INSERT INTO PlayerPerformance (performance_id, athlete_id, goals, assists, games) VALUES (4, 4, 4, 2, 7);
INSERT INTO PlayerPerformance (performance_id, athlete_id, goals, assists, games) VALUES (5, 5, 0, 2, 8);

-- Insert data into InjuryReport
INSERT INTO InjuryReport (injury_id, athlete_id, injury_type) VALUES (1, 5, 'ankle sprain');
INSERT INTO InjuryReport (injury_id, athlete_id, injury_type) VALUES (2, 6, 'groin strain');
INSERT INTO InjuryReport (injury_id, athlete_id, injury_type) VALUES (3, 9, 'ankle sprain');
INSERT INTO InjuryReport (injury_id, athlete_id, injury_type) VALUES (4, 2, 'dead leg');
INSERT INTO InjuryReport (injury_id, athlete_id, injury_type) VALUES (5, 3, NULL);

-- Insert data into NIL_deals
INSERT INTO NIL_deals (deal_id, city_state, company, athlete_id) VALUES (2855, 'Baltimore, MD', 'Under Armour', 10);
INSERT INTO NIL_deals (deal_id, city_state, company, athlete_id) VALUES (3164, 'San diego, CA', 'Puma', 3);
INSERT INTO NIL_deals (deal_id, city_state, company, athlete_id) VALUES (4765, 'Durham, NC', 'Nike', 1);
INSERT INTO NIL_deals (deal_id, city_state, company, athlete_id) VALUES (5635, 'Richmond, VA', 'Under Armour', 9);
INSERT INTO NIL_deals (deal_id, city_state, company, athlete_id) VALUES (6832, 'Raleigh, NC', 'Nike', 2);
