select name as cityname, population as citypopulation from city
where countrycode='ind'
order by name, population desc;