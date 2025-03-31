# Write your MySQL query statement below
select e.name as Employee
from employee e join employee e1
on e1.id=e.managerid
where e.salary > e1.salary;