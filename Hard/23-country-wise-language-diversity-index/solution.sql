select ct.name as countryname, count(distinct cl.language) as languagediversityindex
from country ct
left join countrylanguage cl
    on ct.code=cl.countrycode
group by ct.name
order by languagediversityindex desc, countryname;