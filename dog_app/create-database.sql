drop database if exists dog_app;
create database dog_app character set utf8 collate utf8_bin;
drop user if exists 'testuser'@'localhost';
create user 'testuser'@'localhost' identified by 'test';

GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'localhost' WITH GRANT OPTION;