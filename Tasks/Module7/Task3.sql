/*Модуль 7 задача 3: Вывести героя с наибольшим количеством уникального оружия (уникальность задается названием оружия)*/
select heroname, count(distinct item) from hero, inventory
where id_hero = id_inventory
group by heroname
order by 2 desc
limit 1;