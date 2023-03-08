-- which actor has appeared in most films?
select * 
from actor
where actor_id = 
(select actor_id
from film_actor
group by actor_id
order by count(*)
desc limit 1);

-- what is the average running time of films by category?
select category, avg(length)
from film_list 
group by category;

-- find the movie with the longest runtime
select * from film where length =
(select max(length) from film)
limit 1;
