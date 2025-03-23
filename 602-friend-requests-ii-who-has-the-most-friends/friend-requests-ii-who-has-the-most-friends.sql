# Write your MySQL query statement below
with temp as (select requester_id as id
              from requestAccepted
              union all
              select accepter_id as id
              from requestAccepted)
select id, count(*) as num
from temp
group by id
order by num desc
limit 1;