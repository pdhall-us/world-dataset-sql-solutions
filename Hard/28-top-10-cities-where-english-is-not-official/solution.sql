with t1 as (select c.name as cityname, ct.name as countryname, ct.continent, c.population as citypopulation,
        row_number() over (order by c.population desc) as rk
from country ct
inner join city c
    on ct.code=c.countrycode
where ct.name not in (select ct.name from country ct
inner join countrylanguage cl
    on ct.code=cl.countrycode
where cl.language='english' and cl.isofficial='t'))
select cityname, countryname, continent, citypopulation
from t1 where rk<=10
order by citypopulation desc, cityname, countryname;