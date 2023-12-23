# Write your MySQL query statement below
select t.category, ifnull(a.cnt, 0) as accounts_count
    from (
        select 'Low Salary' category 
        union 
        select 'Average Salary' 
        union 
        select 'High Salary'
    ) as t
    left join (
        select
            case when income < 20000 then 'Low Salary'
                 when income > 50000 then 'High Salary'
                 else 'Average Salary' end
            as category,
            count(1) as cnt
        from Accounts
        group by 1
    ) as a
    on t.category = a.category;


# Write your MySQL query statement below
select 'Low Salary' as category
, count(*) as accounts_count
from accounts where income<20000
union all
select 'High Salary' as category
, count(*) as accounts_count
from accounts where income>50000
union all
select 'Average Salary' as category
, count(*) as accounts_count
from accounts where income between 20000 and 50000