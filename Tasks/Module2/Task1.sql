/*Модуль 2 задание 1: Вывести героев и напротив их имен преобладающий параметр:интелект, ловкость или сила*/
select heroname, (case
				when intelligence > strength and intelligence > agility then 'Интеллект'
		  		when intelligence < strength and strength > agility then 'Сила' 
		  		else 'Ловкость'
		  	end) as Преобладающий_параметр
from hero