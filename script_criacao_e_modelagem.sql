CREATE TABLE players
(id VARCHAR(45) PRIMARY KEY,
flag CHAR(2));

CREATE TABLE courses
(id VARCHAR(45) PRIMARY KEY,
maker VARCHAR(45),
difficulty VARCHAR(45),
gameStyle VARCHAR(45),
title VARCHAR(45),
thumbnail VARCHAR(100),
image VARCHAR(100),
creation TIMESTAMP,
CONSTRAINT fk_courses_players FOREIGN KEY (maker) REFERENCES players(id));

CREATE TABLE courseMeta
(id VARCHAR(45),
firstClear VARCHAR(45),
catch TIMESTAMP,
tag VARCHAR(45),
stars INT,
players INT,
tweets INT,
clears INT,
attempts INT,
clearRate FLOAT,
CONSTRAINT fk_courseMeta_courses FOREIGN KEY (id) REFERENCES courses(id),
CONSTRAINT fk_courseMeta_players FOREIGN KEY (firstClear) REFERENCES players(id));

CREATE TABLE plays
(id VARCHAR(45),
player VARCHAR(45),
catch TIMESTAMP,
CONSTRAINT fk_plays_courses FOREIGN KEY (id) REFERENCES courses(id),
CONSTRAINT fk_plays_players FOREIGN KEY (player) REFERENCES players(id));

CREATE TABLE clears
(id VARCHAR(45),
player VARCHAR(45),
catch TIMESTAMP,
CONSTRAINT fk_clears_courses FOREIGN KEY (id) REFERENCES courses(id),
CONSTRAINT fk_clears_players FOREIGN KEY (player) REFERENCES players(id));

CREATE TABLE likes
(id VARCHAR(45),
player VARCHAR(45),
catch TIMESTAMP,
CONSTRAINT fk_likes_courses FOREIGN KEY (id) REFERENCES courses(id),
CONSTRAINT fk_likes_players FOREIGN KEY (player) REFERENCES players(id));

CREATE TABLE records
(id VARCHAR(45),
player VARCHAR(45),
catch TIMESTAMP,
timeRecord INT,
CONSTRAINT fk_records_courses FOREIGN KEY (id) REFERENCES courses(id),
CONSTRAINT fk_records_players FOREIGN KEY (player) REFERENCES players(id));