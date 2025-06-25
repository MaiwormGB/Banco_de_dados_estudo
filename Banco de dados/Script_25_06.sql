select * from actor;
select a.first_name, a.last_name from actor a;

select * from actor a where a.first_name like 'G%';

select * from actor a where a.last_name like '%l';

select count(*) from film f;

select * from film_actor fa; 

select * from film f;

select * from film f where f.film_id = 257;

select * from actor a 
inner join film_actor fa on fa.actor_id = a.actor_id 
inner join film f on f.film_id  = fa.film_id
where f.film_id = 557;