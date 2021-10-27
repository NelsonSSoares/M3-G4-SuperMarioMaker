## Relação entre o total de jogadores e os que já criaram fases.

select count(jogadores.id) as Total_jogadores,
count(map.maker) as Criadores_mapa,
((count(map.maker) / count(jogadores.id))*100) as `% do total`
from players as jogadores
left join courses as map
on jogadores.id = map.maker;