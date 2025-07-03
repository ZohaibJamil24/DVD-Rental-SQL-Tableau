WITH CategorySalesRanked AS (
    SELECT
        store_id,
        category_name,
        SUM(total_revenue) AS category_sales,
        RANK() OVER (
            PARTITION BY store_id
            ORDER BY SUM(total_revenue) DESC
        ) AS category_rank
    FROM film_rental_kpis
    GROUP BY store_id, category_name
)
SELECT
    store_id,
    category_name,
    category_sales
FROM CategorySalesRanked
WHERE category_rank <= 5
ORDER BY store_id, category_sales DESC;
