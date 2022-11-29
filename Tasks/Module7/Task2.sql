/*Модуль 7 задача 2: Вывести самый популярный класс среди героев*/
select classname from gameclass
where id_class = (select gameclass from hero
group by gameclass
order by count(gameclass) desc
limit 1);