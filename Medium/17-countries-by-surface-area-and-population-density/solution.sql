select countryname, surfacearea, population, round(populationdensity,2) as populationdensity from
(select name as countryname, surfacearea, population, population/surfacearea as populationdensity from country
where population <> 0 and surfacearea between 10000 and 50000
order by populationdensity desc, name) as temp
where populationdensity>100;