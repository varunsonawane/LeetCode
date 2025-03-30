# Write your MySQL query statement below
select 
  round(
    count(distinct a.player_id) * 1.0 / 
    (select count(distinct player_id) from activity), 
    2
  ) as fraction
from (
  select player_id, min(event_date) as first_login
  from activity
  group by player_id
) as first_logins
join activity a
  on a.player_id = first_logins.player_id
  and a.event_date = date_add(first_logins.first_login, interval 1 day);
