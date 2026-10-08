CREATE VIEW country_summary AS
with t2 as (with t1 as (select ct.code as code, ct.name as countryname, ct.population as totalpopulation,
        count(c.name) as numberofcities
from country ct
left join city c
    on ct.code=c.countrycode
group by ct.code)
select t.CountryName, t.TotalPopulation, t.NumberOfCities,
        count(cl.language) as NumberOfOfficialLanguages
from t1 t
left join countrylanguage cl
    on t.code=cl.countrycode and cl.isofficial='t'
group by t.countryname, t.totalpopulation, t.numberofcities
order by countryname)
select t2.countryname, t2.totalpopulation, t2.numberofcities, t2.numberofofficiallanguages, t12.mostpopulatedcity
from t2 t2
inner join (select countryname, cityname as mostpopulatedcity from
(select ct.name as countryname, c.name as cityname, c.population as citypopulation,
        dense_rank() over (partition by ct.name order by c.population desc, c.name) as rk
from country ct
left join city c
    on ct.code=c.countrycode) as t11
where rk=1) t12
on t2.countryname=t12.countryname
order by t2.countryname;