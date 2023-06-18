-- 1.Get film ratings.
use sakila;
select distinct rating from film;
-- 2. Get release years.
select distinct release_year from film;
-- 3. Get all films with ARMAGEDDON in the title.
select * from film where title like '%ARMAGEDDON%';
-- 4. Get all films with APOLLO in the title
select * from film where title like '%APOLLO%'; 
-- 5. Get all films which title ends with APOLLO.
-- 6. Get all films with word DATE in the title.
select * from film where title like '%DATE%';
-- 7. Get 10 films with the longest title.
select *, length(title) as title_length from film
order by title_length asc 
limit 10;
-- 8.Get 10 the longest films.
select * from film 
order by length asc
limit 10;
-- 9. How many films include Behind the Scenes content?
select * from film where special_features like '%Behind the Scenes%';
-- 10. List films ordered by release year and title in alphabetical order.
select * from film order by release_year, title;