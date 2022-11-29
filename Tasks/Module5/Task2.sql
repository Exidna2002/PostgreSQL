/*Модуль 5 задача 2: посчитать средний урон героев чей уровень больше 15 и меньше 60. Урон мага = интеллект * базовый урон, урон танка = сила * базовый урон, урон ассасина = ловкость * базовый урон*/
select avg(attack * case
		  	 	when gameclass in(2, 4) then intelligence
		  	 	when gameclass in(3, 5) then agility
		  	 	else strength
			 end) 
from hero 
where herolevel between 15 and 60