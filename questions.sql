
## 1 - Qual mapa foi concluido em mais e menos tempo ?

select * from records;
select * from courses;

select courses.title as Fase, max(records.timeRecord) as T_Maximo, min(records.timeRecord) as T_minimo from records
inner join courses
on records.id = courses.id
group by courses.title;


## 2- Quantos jogadores já jogaram a mesma fase mais de 5 vezes?

select * from players;
select * from plays;

select players.id as Jogador, count(plays.player) as N_Vezes from players
inner join plays
on players.id = plays.player
group by Jogador
having count(plays.player) > 5;

	
## 3- Qual o tipo de jogo é o mais popular?

select * from courses;
select * from likes;


select  gameStyle as Jogo, count(likes.id) as Likes from courses as map
inner join likes 
on map.id = likes.id
group by gameStyle;



## 4- Qual a relação entre dificuldade e número de tentativas?

select * from coursemeta;
select * from courses;

select distinct fases.difficulty as dificuldade, count(dados.attempts) as tentativas from courses as fases
inner join coursemeta as dados
on fases.id = dados.id
group by fases.difficulty;





## 5- Quantos jogadores existem no total e quantos deles ja criaram uma fase (mapa)?
select * from courses;
select * from players;

select count(id) from players;

select count(jogador.id) as Jogador, count(map.maker) as criador_mapa from players as jogador
inner join courses as map
on jogador.id = map.maker;




## 6- Qual fase é a fase quem tem o maior numero de curtidas?

select * from courses;
select * from likes;


select  title as Fase, count(likes.id) as Likes from courses as map
inner join likes 
on map.id = likes.id;


select * from likes;
select * from clears;
select * from coursemeta;
select * from courses;
select * from players;