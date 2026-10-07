with t2 as (with t1 as (select ct.continent, c.name as cityname, ct.name as countryname, c.population as citypopulation, ct.surfacearea as countrysurfacearea,
        round(c.population/ct.surfacearea,2) as populationtoarearatio from country ct
inner join city c
    on ct.code=c.countrycode
where ct.surfacearea<>0)
select continent, cityname, countryname, citypopulation, countrysurfacearea, populationtoarearatio,
        dense_rank() over (partition by continent order by populationtoarearatio desc) as rk
from t1)
select continent, cityname, countryname, citypopulation, countrysurfacearea, populationtoarearatio
from t2
where rk=1
order by continent, cityname;