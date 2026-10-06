with t1 as(select ct.name as countryname, c.name as cityname, c.population as citypopulation,
        rank() over (partition by ct.name order by c.population desc) as rk
from country ct
inner join city c
    on ct.code=c.countrycode)
select countryname, cityname, citypopulation from t1
where rk=1
order by countryname, cityname;