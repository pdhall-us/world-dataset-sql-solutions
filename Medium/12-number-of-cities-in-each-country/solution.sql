select ct.name as countryname, count(c.id) as numberofcities
from country ct
left join city c
    on ct.code=c.countrycode
group by ct.name
order by numberofcities desc, ct.name asc;