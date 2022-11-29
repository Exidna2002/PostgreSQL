/*Выбрать героев класс который Шаман или Танк и здоровье больше 100*/
select * from hero where gameclass in (1,4) and health > 100;