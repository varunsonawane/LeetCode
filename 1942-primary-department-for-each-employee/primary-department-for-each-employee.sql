# Write your MySQL query statement below
select employee_id, department_id
from Employee m
where primary_flag = "Y"

union

select employee_id, department_id
from employee em
where employee_id not in (select employee_id
                          from employee
                          where primary_flag = "Y")