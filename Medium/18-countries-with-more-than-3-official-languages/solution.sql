select ct.name as countryname, count(cl.language) as numberofofficiallanguages from country ct
inner join countrylanguage cl
    on ct.code=cl.countrycode
where cl.isofficial='t'
group by ct.name
having count(cl.language)>3
order by numberofofficiallanguages desc, ct.name;