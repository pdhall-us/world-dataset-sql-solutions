select distinct cl.language from country c
inner join countrylanguage cl
    on c.code=cl.countrycode
where c.continent='europe' and cl.isofficial='t'
order by cl.language;