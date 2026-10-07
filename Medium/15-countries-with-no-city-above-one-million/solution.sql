select distinct name as countryname, population as countrypopulation, continent from country
where name not in (select distinct ct.name from country ct
inner join city c
    on ct.code=c.countrycode
where c.population>1000000)
order by name;