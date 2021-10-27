## Relação de países que possuem o maior número de jogadores.

select flag as Países,
count(id) as Qtd_jogadores 
from players
group by flag
order by Qtd_jogadores desc;