-- Question 1-- ANSWER IS 2!!
select last_name 
from actor
where last_name like 'W__%rg';

-- Question 2-- answer is 5566

select count(amount)
from payment
where amount between 3.99 and 5.99;

-- Question 3 -- ANSWER IS Film_id 1000 has 4581

select film_id, sum(inventory_id) 
from inventory
group by film_id, inventory_id
order by sum desc;


--Question 4 -- ANSWER IS NONE

select last_name
from customer
where last_name like 'W__$am';

-- Question 5 -- Answer is staff_id 1 sold the most rentals.

select staff_id, sum(amount)
from payment
group by staff_id
order by staff_id desc;

-- Question 6 -- Answer is 603 districts

select count(district) from address;

-- Question 7 -- Answer is film_id 508

select film_id, count(actor_id)
from film_actor
group by film_id
order by count desc; 


-- Question 8-- Answer is store_id 1 has 13

select store_id, count(last_name)
from customer
where last_name like '__%es'
group by store_id 
order by store_id;

-- Question 9-- Answer is Amounts (2.99, 4.99 and 0.99)

select amount, count(amount) 
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

-- Question 10-- There are 5 rating categories and rated PG-13 has the most movies

select rating, count(film_id) 
from film
group by rating
order by count desc;

















