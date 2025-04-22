# Write your MySQL query statement below
select user_id, email 
from users
where email regexp '^[A-Za-z0-9]+@[A-Za-z]+\\.com'
order by user_id;