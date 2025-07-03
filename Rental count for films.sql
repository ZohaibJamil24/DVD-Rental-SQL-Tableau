SELECT
    r.store_id,
    f.title AS film_title,
    COUNT(r.rental_id) AS rental_count
FROM film_rental_kpis r
JOIN film f ON r.film_id = f.film_id
GROUP BY r.store_id, f.title
ORDER BY r.store_id, rental_count DESC;
