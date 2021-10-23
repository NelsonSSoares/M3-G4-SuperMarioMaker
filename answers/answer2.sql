
## 2- Quantos jogadores já jogaram a mesma fase mais de 5 vezes?

select * from players;
select * from plays;

select players.id as Jogador, count(plays.player) as N_Vezes from players
inner join plays
on players.id = plays.player
group by Jogador
having count(plays.player) > 5;