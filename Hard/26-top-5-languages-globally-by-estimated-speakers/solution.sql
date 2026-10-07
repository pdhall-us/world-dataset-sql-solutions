with t2 as (with t1 as (select ct.name,cl.language, ct.population, cl.percentage, (ct.population*cl.percentage)/100 as estimatedspeakers from country ct
inner join countrylanguage cl
    on ct.code=cl.countrycode)
select language, sum(estimatedspeakers) as estimatedspeakers from t1
group by language)
select language, round(estimatedspeakers, 2) as estimatedspeakers,
        round((estimatedspeakers/(select sum(population) from country))*100,2) as estimatedworldpopulationshare
from t2
order by estimatedspeakers desc, language
limit 5;