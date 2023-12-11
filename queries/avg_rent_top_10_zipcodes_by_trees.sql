
WITH toptrees AS(
    SELECT zipcode,
           COUNT(distinct tree_id) AS tree_num
    FROM trees
    GROUP BY zipcode
    ORDER BY tree_num DESC
    LIMIT 10
)
SELECT t.zipcode,
       ROUND(AVG(z.rent)::numeric, 2) AS avg_rent
FROM toptrees t
JOIN zillows z ON t.zipcode = z.zipcode
WHERE date ='2023-08-31'
GROUP BY t.zipcode
ORDER BY avg_rent DESC;
