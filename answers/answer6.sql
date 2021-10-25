## 6- Qual fase é a fase quem tem o maior numero de curtidas?

select * from courses;
select * from likes;


select  title as Fase, count(likes.id) as Likes from courses as map
inner join likes 
on map.id = likes.id
group by Fase
order by Likes desc
limit 10;