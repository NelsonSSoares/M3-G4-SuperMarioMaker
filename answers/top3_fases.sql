## Top 3 de fases curtidas.

select map.title as Fase,
count(likes.id) as Likes
from courses as map
inner join likes 
on map.id = likes.id
group by Fase
order by Likes desc
limit 3;