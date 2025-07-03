SELECT
    category_name AS category,
    COUNT(DISTINCT rental_id) AS total_rentals,
    COUNT(DISTINCT film_id) AS total_films,
    ROUND(COUNT(DISTINCT rental_id) / NULLIF(COUNT(DISTINCT film_id), 0), 2) AS turnover_rate
FROM film_rental_kpis
GROUP BY category_name
ORDER BY turnover_rate DESC;
