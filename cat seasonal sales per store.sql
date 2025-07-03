WITH CategorySalesRanked AS (
    SELECT
        YEAR(r.rental_date) AS year,
        CASE
            WHEN MONTH(r.rental_date) IN (12, 1, 2) THEN 'Winter'
            WHEN MONTH(r.rental_date) IN (3, 4, 5) THEN 'Spring'
            WHEN MONTH(r.rental_date) IN (6, 7, 8) THEN 'Summer'
            ELSE 'Fall'
        END AS season,
        c.name AS category_name,
        SUM(p.amount) AS total_sales,  -- Summing the rental revenue for each category
        RANK() OVER (
            PARTITION BY YEAR(r.rental_date),
            CASE
                WHEN MONTH(r.rental_date) IN (12, 1, 2) THEN 'Winter'
                WHEN MONTH(r.rental_date) IN (3, 4, 5) THEN 'Spring'
                WHEN MONTH(r.rental_date) IN (6, 7, 8) THEN 'Summer'
                ELSE 'Fall'
            END
            ORDER BY SUM(p.amount) DESC
        ) AS category_rank
    FROM film_rental_kpis r
    JOIN payment p ON r.rental_id = p.rental_id  -- Join with payment to get the total revenue
    JOIN film_category fc ON r.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id  -- Join with category to get category name
    GROUP BY year, season, c.name
)
SELECT 
    year, 
    season, 
    category_name, 
    total_sales
FROM CategorySalesRanked
WHERE category_rank <= 2  -- Get the top 2 categories per season
ORDER BY year DESC, season, total_sales DESC;
