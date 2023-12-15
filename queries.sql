-- 1st
SELECT * FROM owners o 
  JOIN vehicles v 
    ON o.id=v.owner_id;

-- 2nd
SELECT first_name, last_name, 
  COUNT(v.owner_id) FROM owners o 
  JOIN vehicles v on o.id=v.owner_id 
  GROUP BY (first_name, last_name) 
  ORDER BY first_name;

-- 3rd
SELECT first_name, last_name,
  ROUND(AVG(v.price)) AS avg_price 
  COUNT(v.owner_id) FROM owners o 
  JOIN vehicles v on o.id=v.owner_id 
  GROUP BY (first_name, last_name)
  HAVING 
  COUNT(v.owner_id) > 1 AND ROUND(AVG(price)) > 10000  
  ORDER BY first_name DESC;