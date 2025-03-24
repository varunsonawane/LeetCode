select s.user_id,
    round(
        coalesce(
            sum(case when c.action = 'confirmed' then 1 else 0 end) 
            / 
            nullif(count(c.action), 0),
            0
        ),
        2
    ) as confirmation_rate
from signups s 
left join confirmations c 
on s.user_id = c.user_id
group by s.user_id