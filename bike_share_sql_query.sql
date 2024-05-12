with bike_share as (
select * from bike_share_yr_0
union
select * from bike_share_yr_1)


select 
dteday, 
season, 
bs.yr, 
weekday, 
hr, 
rider_type, 
riders, 
price, 
COGS, 
riders*price as revenue, 
riders*price -COGS as profit
from bike_share bs
left join cost_table ct
on bs.yr = ct.yr;