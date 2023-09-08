--create database publishment
--use publishment

create table country
( id int primary key identity (1,1),
name nvarchar(50) unique)

create table themes
( id int primary key identity (1,1),
name nvarchar(50) unique)

create table authors (
id int  primary key identity (1,1),
firstname nvarchar(50) unique,
lastname nvarchar(50) unique,
id_country int references country(id))

create table shops (
id int  primary key identity (1,1),
name nvarchar(50) unique,
id_country int references country(id))

create table books (
id int  primary key identity (1,1),
name nvarchar(50) unique,
id_theme int references themes(id),
id_author int references authors(id),
price money,
date_of_publish date,
pages nvarchar(50))

create table sales(
id int  primary key identity (1,1),
name nvarchar(50) unique,
id_book int references books(id),
id_shop int references shops(id),
price money,
date_of_sale date,
quantity int,
pages nvarchar(50))