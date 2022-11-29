/*Модуль 8 задача 1: Выбрать уникальные предметы, которые есть только у одного и отсутствуют у других героев*/
select itemname from item
where id_item = any(select item from inventory
					group by item 
					having count(id_inventory) = 1
				   );