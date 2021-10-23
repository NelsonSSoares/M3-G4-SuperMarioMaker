## 5- Quantos jogadores existem no total e quantos deles ja criaram uma fase (mapa)?

select count(id) from players;

select count(jogador.id) as Jogador, count(map.maker) as criador_mapa from players as jogador
inner join courses as map
on jogador.id = map.maker;