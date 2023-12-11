
WITH low_high_rent AS (
(
SELECT zipcode,
       ROUND(AVG(rent)::numeric, 2) AS avg_rent
FROM zillows
WHERE date = '2023-01-31'
GROUP BY zipcode
ORDER BY avg_rent ASC
LIMIT 5
)
UNION ALL
(
SELECT zipcode,
       ROUND(AVG(rent)::numeric, 2) AS avg_rent
FROM zillows
WHERE date = '2023-01-31'
GROUP BY zipcode
ORDER BY avg_rent DESC
LIMIT 5
))
SELECT a.zipcode,
       a.avg_rent,
       a.tree_count,
       b.compliant_count
FROM
(SELECT r.zipcode,
       r.avg_rent,
       COUNT(t.tree_id) AS tree_count  
FROM low_high_rent r
LEFT JOIN trees t ON r.zipcode=t.zipcode
GROUP BY r.zipcode,
         r.avg_rent
) a
LEFT JOIN 
(SELECT zipcode,
        COUNT(unique_key) AS compliant_count
FROM services
WHERE date between '2023-01-01' and '2023-01-31'
GROUP BY zipcode
) b
ON a.zipcode=b.zipcode;
