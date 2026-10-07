with t1 as (select ct.name as countryname, c.name as cityname, c.population as citypopulation,
        avg(c.population) over (partition by ct.name) as countryaveragecitypopulation
from country ct
inner join city c
    on ct.code=c.countrycode)
select countryname, cityname, citypopulation, round(countryaveragecitypopulation,2) as countryaveragecitypopulation from t1
where citypopulation>countryaveragecitypopulation
order by countryname, citypopulation desc, cityname;