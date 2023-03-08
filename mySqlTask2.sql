use sakila;

-- which actor has appeared in most films? 
select actor_id
from film_actor
group by actor_id
order by count(*) desc
limit 1;
select * from actor where actor_id=107;

-- what is that average running time of all the films in the database
select avg(length) from film;

-- what is the average running time of films by category
select category,avg(length) as ave_length from film_list group by category;
select category,avg(length) from film_list group by category; --> 'as ave_length' not needed


-- find the movies with the longest runtime
select * from film where length = (select max(length) from film) limit 1;

-- how many movies have robots in them
select count(*) from film where description like '%robot%';
another way -->  select count(description) as films_with_robots from film where description like '%robot%';

-- count how many movies were released in 2010
select count(*) from film where release_year='2010';

-- which last names are not repeated
select last_name from actor where last_name in 
(select last_name from actor group by last_name having count(last_name)=1);
another way -->  select last_name from actor group by last_name having count(last_name) = 1 ;
HAVING IS WHERE FOR AGGREGATIONS. 


