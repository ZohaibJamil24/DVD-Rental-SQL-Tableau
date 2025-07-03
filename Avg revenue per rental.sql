SELECT
    c.name AS category_name,
    AVG(p.amount) AS avg_revenue_per_rental  -- Calculate the average revenue per rental
FROM film_rental_kpis r
JOIN payment p ON r.rental_id = p.rental_id
JOIN film_category fc ON r.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY avg_revenue_per_rental DESC;
