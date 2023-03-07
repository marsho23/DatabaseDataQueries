use sakila;

-- 1. select all actors form the table
select * from actor;

-- 2. find the actor with the first name 'john'
select * from actor where first_name='JOHN';

-- 3. find the actor with the last name 'Neeson'
select * from actor where last_name = 'Neeson';

-- 4. find all actors with id numbers divisible by 10
select * from actor where actor_id%10=0;

-- 5. what is the description of the movie with id of 100
select description from film where id=100;

-- 6. find every movie with a rating of R
select * from film where rating = 'R';

-- 7. find every movie except those with a rating of R
select * from film where rating != 'R';

-- 8. find the ten shortest movies
select * from film order by length asc limit 10;

-- 9. now return only the movie titles
select title from film;

-- 10. find all movies with deleted scenes
select * from film where special_features like '%deleted scene%';

-- 11. how many distinct countries are there
select distinct * from country;
select count(*) as count_countries from country;

-- 12. what are the names of all the languages in the database
select * from language order by name asc;