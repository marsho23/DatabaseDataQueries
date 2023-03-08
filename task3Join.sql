-- what is the average running time of films by category
select c.name, avg(f.length)
from film as f
join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id
group by c.category_id;

-- which last names appear more than once 
select a.last_name, count(a.last_name)
from actor as a
group by a.last_name
having count(a.last_name)>1;

-- retrieve all movies that fred costner has appeared in
select a.first_name, a.last_name, f.title
from film as f
join film_actor as fa on f.film_id=fa.film_id
join actor as a on a.actor_id=fa.actor_id
group by a.first_name, a.last_name, f.title
having a.first_name='fred' and a.last_name='costner';

-- find out which location has the most copies of BUCKET BROTHERHOOD
select s.store_id, a.location, i.film_id, i.store_id,count(i.film_id) as number_of_copies,f.title
from film as f
join inventory as i on f.film_id=i.film_id
join store as s on s.store_id=i.store_id
join address as a on s.address_id=a.address_id
group by s.store_id, a.location, i.film_id, i.store_id,f.title
having f.title='BUCKET BROTHERHOOD'
order by number_of_copies desc limit 1;

-- create a list of categories and the number of films for each category
select c.name, count(fc.category_id) as number_of_films
from category as c
join film_category as fc on fc.category_id = c.category_id
group by c.category_id;

-- create a list of actors and the number of movies by each actor
select a.first_name,a.last_name, count(fa.actor_id) as number_of_movies
from actor as a
join film_actor as fa on fa.actor_id=a.actor_id
group by a.actor_id;

-- is 'academy dianasour' available for rent from store 1
select i.store_id, f.title 
from film as f
join inventory as i on f.film_id=i.film_id
group by i.store_id,f.title
having f.title = 'ACADEMY DINOSAUR' and i.store_id=1;

-- when is 'ACADEMY DINOSAUR' due




