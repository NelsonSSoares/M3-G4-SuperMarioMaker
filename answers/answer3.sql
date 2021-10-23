## 3- Qual o tipo de jogo é o mais popular?

select * from courses;
select * from likes;


select  gameStyle as Jogo, count(likes.id) as Likes from courses as map
inner join likes 
on map.id = likes.id;
