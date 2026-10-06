with t1 as (select c.name, cl.language, cl.isofficial, cl.percentage,
        max(percentage) over (partition by c.name) as mostspokenpercentage
from country c
inner join countrylanguage cl
    on c.code=cl.countrycode)
select name as countryname, language as officiallanguage,
        percentage as officiallanguagepercentage, mostspokenpercentage
from t1
where isofficial='t' and percentage<mostspokenpercentage
order by countryname, language;