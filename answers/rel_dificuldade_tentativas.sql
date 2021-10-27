## A relação entre dificuldade dos mapas e o número de tentativas.

select distinct fases.difficulty as dificuldade, 
count(dados.attempts) as tentativas 
from courses as fases
inner join courseMeta as dados
on fases.id = dados.id
group by fases.difficulty
order by tentativas desc;