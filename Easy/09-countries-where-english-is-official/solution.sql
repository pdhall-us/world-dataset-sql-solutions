select c.name as countryname from country c
inner join countrylanguage cl
    on c.code=cl.countrycode
where cl.language='english' and cl.isofficial='t'
order by c.name;