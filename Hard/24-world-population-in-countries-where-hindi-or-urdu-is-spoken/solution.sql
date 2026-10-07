with t1 as (select distinct ct.name, ct.population, (select sum(population) from country) as worldpopulation from country ct
inner join countrylanguage cl
    on ct.code=cl.countrycode
where cl.language='hindi' or cl.language='urdu')
select sum(population) as qualifyingpopulation, worldpopulation,
round((sum(population)/worldpopulation)*100, 2) as worldpopulationpercentage
from t1
group by worldpopulation;