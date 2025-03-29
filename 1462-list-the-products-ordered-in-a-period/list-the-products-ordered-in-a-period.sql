# Write your MySQL query statement below
select product_name , sum(unit) as unit
from products p join orders o
on p.product_id= o.product_id
where date_format(o.order_date, '%Y-%m') = '2020-02'
group by p.product_id
having sum(o.unit)>=100;