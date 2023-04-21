DROP database if EXISTS dbt;
CREATE database dbt;
use dbt 
DROP USER if EXISTS 'dbtuser'@'localhost';
CREATE USER 'dbtuser'@'localhost' IDENTIFIED BY 'dbtpass';
GRANT ALL ON *.*TO 'dbtuser'@'localhost';
create table data (
	id VARCHAR(30),
	screenName VARCHAR(30),
	tag VARCHAR(40),
	followerCount BIGINT,
	lang varchar(10),
	tweetID varchar(100)
);
