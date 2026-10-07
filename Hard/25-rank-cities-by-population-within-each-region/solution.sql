select ct.region, c.name as cityname, ct.name as countryname, c.population as citypopulation,
    rank() over (partition by ct.region order by c.population desc) as populationrank
from country ct
inner join city c
    on ct.code=c.countrycode
order by ct.region, populationrank, c.name, ct.name;