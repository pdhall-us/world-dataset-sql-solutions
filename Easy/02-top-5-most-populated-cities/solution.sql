select name as cityname,
        population as citypopulation
from city order by population desc, name, id
limit 5;