-- Level 1 – SELECT fundamentals
-- Beginner
--  10 exercises

-- Learn to retrieve data and understand table structures.
-- No.	Exercise
use sakila;

-- 1	Display all records from the actor table.
select * from actor;

-- 2	Display only the first name and last name of all actors.
select first_name, last_name from actor;

-- 3	Display all columns from the film table.
SELECT * FROM film;

-- 4	Retrieve the title and rental rate of all films.
select title, rental_rate from film;

-- 5	Display all customer names and email addresses.
select first_name, last_name, email from customer;

-- 6	Retrieve all distinct film ratings.
select distinct rating from film;

-- 7	Find all distinct film rental durations.
select distinct rental_duration from film;

-- 8	Display the first 10 films.
select title from film limit 10;

-- 9	Display the last 10 actors based on actor ID.
select  actor_id, first_name, last_name from actor order by actor_id desc limit 10;

-- 10	Display the structure of the customer table and identify its primary key.
describe customer;
show keys from customer where Key_name = 'PRIMARY';

-- Concepts: SELECT, DISTINCT, LIMIT, ORDER BY, DESCRIBE.
-- Level 2 – Filtering and sorting
-- Beginner
--  10 exercises
-- No.	Exercise
-- 11	Find all actors whose first name is 'PENELOPE'.
select * from actor where first_name = 'PENELOPE';

-- 12	Find all films with a rental rate greater than 3.
select * from film where rental_rate > 3.0;

-- 13	Find films with a rental rate between 2 and 4.
select * from film where rental_rate between 2 and 4;

-- 14	Find films with a rating of 'PG-13'.
select * from film where rating = 'PG-13';

-- 15	Find customers whose first name starts with 'A'.
select * from customer where first_name like 'A%';

-- 16	Find actors whose last name ends with 'SON'.
select * from actor where last_name like '%SON';

-- 17	Find customers whose first name contains 'AN'.
select * from customer where first_name like '%AN%';

-- 18	Retrieve films released in 2006 or 2007.
select * from film where release_year in (2006, 2007);

-- 19	Find films that are not rated 'R'.
select * from film where rating <> 'R';

-- 20	Retrieve films with a rental duration of 5 or 6 days, ordered by rental rate from highest to lowest.
select * from film where rental_duration in (5, 6) order by rental_rate desc;

-- Concepts: WHERE, AND, OR, NOT, IN, BETWEEN, LIKE, ORDER BY.
-- Level 3 – Aggregate functions
-- Beginner → Intermediate
--  10 exercises

-- These are particularly important for data analysis.
-- No.	Exercise
-- 21	Count the total number of actors.
select count(*) as total_actors from actor;

-- 22	Count the total number of customers.
select count(*) as total_customers from customer;

-- 23	Find the average rental rate of all films.
select avg(rental_rate) as average_rental_rate from film;

-- 24	Find the highest and lowest replacement cost of films.
select max(replacement_cost) as highest_replacement_cost, min(replacement_cost) as lowest_replacement_cost from film;

-- 25	Calculate the total payment amount received.
select sum(amount) as total_payment_amount from payment;

-- 26	Find the average film length.
select avg(length) as average_film_length from film;

-- 27	Find the total number of films with a PG-13 rating.
select count(*) as total_number_of_films from film where rating = 'PG-13';

-- 28	Count how many distinct film ratings exist.
select count(distinct rating) as distinct_film_rating from film;

-- 29	Find the total number of rentals.
select count(*) as total_number_of_rental from rental;

-- 30	Calculate the total revenue generated from payments.
select sum(amount) as total_revenue from payment;

-- Concepts: COUNT, SUM, AVG, MIN, MAX, DISTINCT.
-- Level 4 – GROUP BY and HAVING
-- Intermediate
--  8 exercises

-- This is where you start answering business questions.
-- No.	Exercise
-- 31	Count the number of films in each rating category.
select rating, count(*) as number_of_films from film group by rating;

-- 32	Find the number of films available in each rental duration.
select rental_duration, count(*) as number_of_films from film group by rental_duration;

-- 33	Calculate the average rental rate for each film rating.
select rating, avg(rental_rate) as average_rental_rate from film group by rating;

-- 34	Find the number of actors sharing each last name.
select last_name, count(*) as number_of_actors from actor group by last_name;

-- 35	Find customers who have made more than 20 rentals.
select customer_id, count(*) as rental_count from rental group by customer_id having rental_count > 20;

-- 36	Find film ratings that have more than 100 films.
select rating, count(*) as total_film_rating from film group by rating having total_film_rating > 100;

-- 37	Calculate total payment amount collected by each customer.
select customer_id ,sum(amount) as total_amount from payment group by customer_id;

-- 38	Find rental dates on which more than 100 rentals occurred.
select date(rental_date) as rental_date_only, count(*) as count_of_rental from rental group by rental_date_only having count_of_rental > 100;

-- Concepts: GROUP BY, HAVING, aggregate functions.
-- Level 5 – SQL Joins
-- Intermediate
--  12 exercises

-- This is one of the most important sections. Spend extra time here.








-- narodnatribuna.info


-- No.	Exercise
-- 39	Display each customer along with their address.
-- 40	Display each address along with its city name.
-- 41	Display each city along with its country name.
-- 42	Display customer names along with their city and country.
-- 43	Display each film along with its language.
-- 44	Display film titles along with their category names.
-- 45	Display actor names along with the films they acted in.
-- 46	Find the number of films each actor has acted in.
-- 47	Display each customer along with their rental history.
-- 48	Display rental information with customer name, film title and rental date.
-- 49	Display payment information with customer name and staff name.
-- 50	Display each store along with its manager's name and address.

-- Concepts: INNER JOIN, LEFT JOIN, RIGHT JOIN, multiple joins, table aliases, primary and foreign keys.
-- Level 6 – Subqueries
-- Intermediate → Advanced
--  10 exercises
-- No.	Exercise
-- 51	Find films whose rental rate is higher than the average rental rate of all films.
-- 52	Find customers who have made at least one rental.
-- 53	Find actors who have acted in more films than the average number of films per actor.
-- 54	Find films that have never been rented.
-- 55	Find customers whose total payments exceed the average total payments per customer.
-- 56	Find the film with the highest rental rate.
-- 57	Find customers who have rented films from more than one category.
-- 58	Find films belonging to the same category as 'ACADEMY DINOSAUR'.
-- 59	Find actors who have acted in the film with the longest duration.
-- 60	Find customers who have never made a payment.

-- Concepts: Scalar subqueries, IN, EXISTS, NOT EXISTS, correlated subqueries.
-- Level 7 – Advanced SQL functions
-- Intermediate → Advanced
--  8 exercises
-- No.	Exercise
-- 61	Display customer names in uppercase.
-- 62	Combine first name and last name into a single column.
-- 63	Display film titles and their title lengths.
-- 64	Extract the year from rental dates.
-- 65	Calculate the number of days between rental date and return date.
-- 66	Categorize films as 'Short', 'Medium' or 'Long' based on their length.
-- 67	Display customers with a missing email address, if any.
-- 68	Replace NULL values in address2 with a meaningful default value.

-- Concepts: CASE, CONCAT, UPPER, LENGTH, YEAR, DATEDIFF, COALESCE, IFNULL.
-- Level 8 – CTEs and Window Functions
-- Advanced
--  8 exercises

-- These are particularly useful for data analyst and data science interviews.
-- No.	Exercise
-- 69	Use a CTE to calculate total payments made by each customer.
-- 70	Rank customers based on their total payments.
-- 71	Find the top 3 highest-paying customers in each store.
-- 72	Rank films within each category based on rental rate.
-- 73	Assign a row number to each actor based on their last name.
-- 74	Find the second-highest rental rate in each film category.
-- 75	Calculate a running total of payments ordered by payment date.
-- 76	Compare each customer's payment with their previous payment using LAG.

-- Concepts: WITH, CTE, ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY, LAG, running totals.
-- Level 9 – Views and Set Operations
-- Intermediate
--  5 exercises

-- You already have seven views in your database, so let's use them.
-- No.	Exercise
-- 77	Retrieve all records from customer_list.
-- 78	Retrieve all records from film_list.
-- 79	Compare film_list and nicer_but_slower_film_list.
-- 80	Retrieve sales information from sales_by_film_category.
-- 81	Create a view showing customer names and their total payment amounts.

-- Concepts: CREATE VIEW, SELECT FROM VIEW, UNION, UNION ALL.
-- Level 10 – Real-world business analysis
-- Advanced
--  7 exercises

-- Now imagine you are a data analyst working for the Sakila rental business.
-- No.	Business problem
-- 82	Identify the top 10 customers who generate the highest revenue.
-- 83	Identify the top 5 most frequently rented films.
-- 84	Find which film categories generate the highest revenue.
-- 85	Identify customers who have not rented any films in the last 6 months of available rental data.
-- 86	Find the most popular film category in each store.
-- 87	Calculate monthly revenue and identify the month with the highest revenue.
-- 88	Identify films that are available in inventory but have never been rented.

-- Level 11 – Data modification
-- Advanced
--  5 exercises

-- Practice these carefully. Use a test database or transactions where appropriate.
-- No.	Exercise
-- 89	Insert a new actor into the actor table.
-- 90	Update an actor's last name.
-- 91	Delete a test actor record that you inserted.
-- 92	Create a new view containing films with a rental rate above the average.
-- 93	Use START TRANSACTION, ROLLBACK and COMMIT to understand transaction handling.

-- Level 12 – SQL interview challenges
-- Advanced
--  7 exercises

-- These combine multiple SQL concepts.
-- No.	Challenge
-- 94	Find the third-highest payment amount without using LIMIT.
-- 95	Find customers who have rented every film in a particular category.
-- 96	Find the actor who has appeared in the highest number of films.
-- 97	Find the top 3 customers by revenue without using LIMIT.
-- 98	Find customers who made consecutive-day rentals.
-- 99	Find the percentage contribution of each category to total revenue.
-- 100	Find the customer with the longest gap between two consecutive rentals.