
SELECT zipcode, 
       COUNT(unique_key) AS complaint_num 
FROM services
WHERE DATE(date) BETWEEN '2022-10-01' AND '2023-09-30' 
GROUP BY zipcode 
ORDER BY complaint_num DESC;
