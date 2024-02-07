create database test_db;
use test_db;
create table user(name varchar(20), address varchar(40));
insert into user values('Anu', 'Stratford');
select * from user;
insert into user values('Kim', 'UK');
select * from user where name = 'Kim';
select distinct(name) from user;
ALTER TABLE user ADD num int;
select * from user;
create table distribution_companies(ID int(10), company_name varchar(20));
insert into distribution_companies values (2, 'Universal Pictures');
select * from distribution_companies;
create table movies(ID int(10), movie_title char(20),imdb_rating int(5),year_released year, Budget int(8), box_office int(10), distribution_company_id int(4), lang varchar(20));
insert into movies values (4, 'Titanic', 10, 1999, 7.20, 491.00,2, 'English');

select * from movies;
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies;
SELECT
  movie_title,
  box_office
FROM movies
WHERE box_office > 300;
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE movie_title LIKE '%Godfather%';
SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE year_released < 2001 AND imdb_rating > 9;

SELECT
  movie_title,
  imdb_rating,
  year_released
FROM movies
WHERE year_released > 1991
ORDER BY year_released ASC;
SELECT
  lang,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY lang;
SELECT
  year_released,
  lang,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY year_released, lang
ORDER BY year_released ASC;
SELECT
  lang,
  AVG(budget) AS movie_budget
FROM movies
GROUP BY lang
HAVING AVG(budget) > 1;
SELECT
  movie_title,
  company_name
FROM distribution_companies dc
JOIN movies m
ON dc.id = m.distribution_company_id;
