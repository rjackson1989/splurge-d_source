create table authors(
userID int NOT NULL AUTO_INCREMENT,
username varchar(20) NOT NULL,
password varchar(40) NOT NULL,
firstName varchar(30),
lastName varchar(40),
PRIMARY KEY(userID));

create table powers(
powerID int NOT NULL AUTO_INCREMENT,
username varchar(20) NOT NULL,
password varchar(40) NOT NULL,
PRIMARY KEY(powerID));

create table articles(
artID int NOT NULL AUTO_INCREMENT,
userID int,
title varchar(80),
description varchar(140),
post text,
PRIMARY KEY(artID),
CONSTRAINT FK_articles FOREIGN KEY(userID) REFERENCES authors(userID));

create table article_authors(
userID int,
artID int,
PRIMARY KEY(userID, artID),
FOREIGN KEY(userID) REFERENCES authors(userID),
FOREIGN KEY(artID) REFERENCES articles(artID));

