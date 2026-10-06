with t3 as (with t2 as (with t1 as (select c.continent, c.name, cl.language, c.population,
        round((c.population*cl.percentage)/100,2) as estimatedspeakers
from country c
inner join countrylanguage cl
    on c.code=cl.countrycode)
select continent, language, sum(estimatedspeakers) as estimatedspeakers
from t1
group by continent, language)
select continent, language, estimatedspeakers,
        rank() over (partition by continent order by estimatedspeakers desc) as languagerank
from t2)
select continent, language, estimatedspeakers, languagerank from t3
where languagerank<=3
order by continent, languagerank, language;