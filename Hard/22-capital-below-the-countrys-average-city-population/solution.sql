with t1 as (select distinct ct.name as countryname, c2.name as capitalcity, c2.population as capitalpopulation,
        avg(c1.population) over (partition by ct.name) as averagecitypopulation
from country ct
inner join city c1
    on ct.code=c1.countrycode
inner join city c2
    on ct.capital=c2.id)
select countryname, capitalcity, capitalpopulation, round(averagecitypopulation,2) as averagecitypopulation
from t1
where capitalpopulation<averagecitypopulation
order by countryname;