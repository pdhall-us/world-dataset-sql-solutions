select continent, sum(population) as totalpopulation
from country
where continent not in
    (select distinct ct.continent from country ct
    inner join countrylanguage cl
        on ct.code=cl.countrycode
    where cl.language='english' and cl.isofficial='t')
group by continent
having sum(population)>500000000
order by totalpopulation desc, continent;