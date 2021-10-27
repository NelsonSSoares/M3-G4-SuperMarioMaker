## Os dias em que mais mapas são criados.

set lc_time_names = 'pt_PT';

select dayname(courses.creation) AS Dias_semana, 
count(*) AS Criações
from courses
group by dayname(courses.creation)
order by Criações desc;