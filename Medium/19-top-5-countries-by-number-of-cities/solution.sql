select ct.name as countryname, count(c.name) as numberofcities from country ct
inner join city c
    on ct.code=c.countrycode
group by ct.name
order by numberofcities desc, ct.name
limit 5;