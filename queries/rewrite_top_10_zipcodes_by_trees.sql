
SELECT z.zipcode,
       COUNT(t.tree_id) AS tree_num
FROM trees t
JOIN zipcodes z ON t.zipcode=z.zipcode
GROUP BY z.zipcode
ORDER BY tree_num DESC
LIMIT 10;
