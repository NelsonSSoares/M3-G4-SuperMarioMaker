## 4- Qual a relação entre dificuldade e número de tentativas?

select * from coursemeta;
select * from courses;

select distinct fases.difficulty as dificuldade, count(dados.attempts) as tentativas from courses as fases
inner join coursemeta as dados
on fases.id = dados.id
group by fases.difficulty;