## Os tipos de jogos mais populares.

select  gameStyle as Jogo, 
count(likes.id) as Popularidade 
from courses as map
inner join likes 
on map.id = likes.id
group by gameStyle
order by Popularidade desc;