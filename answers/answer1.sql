## 1 - Qual mapa foi concluido em mais e menos tempo ?

select * from records;
select * from courses;

select courses.title as Fase, max(records.timeRecord) as T_Maximo, min(records.timeRecord) as T_minimo from records
inner join courses
on records.id = courses.id
group by courses.title;