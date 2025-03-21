# Write your MySQL query statement below
SELECT user_id,
        concat(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2))) as name
FROM users
order by user_id;