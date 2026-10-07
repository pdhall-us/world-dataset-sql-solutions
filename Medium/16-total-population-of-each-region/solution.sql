select region, sum(population) as totalpopulation from country
group by region
order by totalpopulation desc, region;