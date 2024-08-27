-- SQL is divided into 3 parts
-- DML DDL DCL
-- DDL Data Definition Language - Responsible for creating managing and deleting database elements
-- CREATE ,ALTER,DROP

-- Create a movies database
CREATE DATABASE movies;
DROP DATABASE movies;

USE movies;

CREATE TABLE movietitles(
movieId INT,
movietitle VARCHAR(50),
director VARCHAR(50),
releaseyear INT,
rating DECIMAL(5,2) 
synopsis vaerchar(500),
dateadded DATE,
moviestatus VARCHAR(50),
deleted BOOL
)   
-- Adding check constraints -- only allows one to enter the predefined args
ALTER TABLE movietitles
ADD CHECK (moviestatus IN ('upcoming','released','canceled'))
-- Adding a column
ALTER TABLE movietitle
ADD addedby INT

CREATE TABLE users (
userId INT,
username VARCHAR(50),
firstname VARCHAR(50),
lastname VARCHAR(50)
)

DROP TABLE users
