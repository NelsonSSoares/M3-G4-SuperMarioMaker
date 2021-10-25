## 5- Quantos jogadores existem no total e quantos deles ja criaram uma fase (mapa)?

select count(jogadores.id) as Total_jogadores,
count(map.maker) as Criadores_mapa,
((count(map.maker) / count(jogadores.id))*100) as `% do total`
from players as jogadores
left join courses as map
on jogadores.id = map.maker;