## O número de jogadores que jogou a mesma fase mais de 5 vezes.

select distinct count(player) as Qtd_jogadores
from plays
having count(player) > 5;