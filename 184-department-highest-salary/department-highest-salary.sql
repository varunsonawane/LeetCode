# Write your MySQL query statement below
select d.name as Department, e.name as Employee, salary
    from (select *,
        dense_rank() over (partition by departmentid order by salary desc ) as rnk
        from employee) e
join department d
on e.departmentId = d.id
where rnk=1;