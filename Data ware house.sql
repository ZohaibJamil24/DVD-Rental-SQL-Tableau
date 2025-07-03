USE sakila;

DROP VIEW IF EXISTS film_rental_kpis;
CREATE OR REPLACE VIEW film_rental_kpis AS 
-- Your query here

SELECT
    r.rental_id,
    r.customer_id,
    i.store_id, 
    f.rental_duration,
    r.rental_date,
    f.film_id,  
    f.title,  
    a.actor_id,  
    CONCAT(a.first_name, ' ', a.last_name) AS actor_name, 
    c.name AS category_name,  
    p.amount AS total_revenue
FROM film f 

-- Join with film_actor to get the actors of the films 
JOIN film_actor fa ON f.film_id = fa.film_id 

-- Join with actor to get actor details 
JOIN actor a ON fa.actor_id = a.actor_id 

-- Join with film_category to get the film categories 
JOIN film_category fc ON f.film_id = fc.film_id 

-- Join with category to get category name 
JOIN category c ON fc.category_id = c.category_id 

-- Join with inventory to get film inventory details 
JOIN inventory i ON f.film_id = i.film_id 

-- Join with rental to get rental details
JOIN rental r ON i.inventory_id = r.inventory_id 

-- Join with payment to get payment details
JOIN payment p ON r.rental_id = p.rental_id;

-- Select from the created view
SELECT *  
FROM film_rental_kpis
LIMIT 25;
