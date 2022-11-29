/*Модуль 3 задача 1: Выбрать такой предмет из таблицы item, который увеличивает общий урон героя и при этом не уменьшает других характеристик*/
select * from item
where attackbuff > 0 and strength >= 0 and agility >= 0 and intilligence >= 0;