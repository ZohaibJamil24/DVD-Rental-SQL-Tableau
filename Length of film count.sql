SELECT
    CASE
        WHEN f.length < 60 THEN 'Short (<60 mins)'
        WHEN f.length BETWEEN 60 AND 120 THEN 'Medium (60-120 mins)'
        WHEN f.length > 120 THEN 'Long (>120 mins)'
        ELSE 'Unknown'  -- In case there are any unexpected lengths
    END AS movie_length_category,
    COUNT(r.rental_id) AS rental_count
FROM film_rental_kpis r
JOIN film f ON r.film_id = f.film_id  -- Access the film details (including length)
GROUP BY
    CASE
        WHEN f.length < 60 THEN 'Short (<60 mins)'
        WHEN f.length BETWEEN 60 AND 120 THEN 'Medium (60-120 mins)'
        WHEN f.length > 120 THEN 'Long (>120 mins)'
        ELSE 'Unknown'
    END
ORDER BY rental_count DESC;
