
SELECT zipcode,
       COUNT(tree_id) AS tree_num
FROM trees
GROUP BY zipcode
ORDER BY tree_num DESC
LIMIT 10;
