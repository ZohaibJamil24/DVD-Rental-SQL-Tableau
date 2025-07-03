
WITH TopCategories AS (
    SELECT 
        store_id,
        category_name,
        SUM(total_revenue) AS total_sales,
        RANK() OVER (PARTITION BY store_id ORDER BY SUM(total_revenue) DESC) AS category_rank
    FROM film_rental_kpis
    GROUP BY store_id, category_name
),
TopActors AS (
    SELECT
        store_id,
        category_name,
        actor_name,
        ROUND(SUM(total_revenue),0) AS actor_sales,
        RANK() OVER (PARTITION BY store_id, category_name ORDER BY SUM(total_revenue) DESC) AS actor_rank
    FROM film_rental_kpis
    GROUP BY store_id, category_name, actor_name
)
SELECT
    ta.store_id,
    ta.category_name,
    ta.actor_name,
    ta.actor_sales
FROM TopActors ta
JOIN TopCategories tc
    ON ta.store_id = tc.store_id
    AND ta.category_name = tc.category_name
WHERE tc.category_rank <= 5  -- Only include top 5 categories
  AND ta.actor_rank <= 5     -- Only include top 5 actors within each category
ORDER BY ta.store_id, ta.category_name, ta.actor_sales DESC;
