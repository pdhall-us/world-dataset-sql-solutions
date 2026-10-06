select continent, count(code) as numberofcountries
from country 
group by continent
order by continent;