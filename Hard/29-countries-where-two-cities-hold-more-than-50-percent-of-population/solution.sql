with t3 as (with t2 as (with t1 as (select ct.name as countryname, ct.population as countrypopulation,
        c.population as citypopulation,
        row_number() over (partition by ct.name order by c.population desc) as rk
        from country ct
inner join city c
    on ct.code=c.countrycode
where ct.population>0 and ct.name not in (select name from (select ct.name, count(c.name) from country ct
inner join city c
    on ct.code=c.countrycode
group by ct.name
having count(c.name)<2) as temp))
select countryname, countrypopulation, sum(citypopulation) as toptwocitiespopulation
from t1
where rk<=2
group by countryname, countrypopulation)
select countryname, countrypopulation, toptwocitiespopulation,
        round((toptwocitiespopulation/countrypopulation)*100,2) as toptwopopulationpercentage
from t2)
select countryname, countrypopulation, toptwocitiespopulation, toptwopopulationpercentage
from t3
where toptwopopulationpercentage>50
order by toptwopopulationpercentage desc, countryname;