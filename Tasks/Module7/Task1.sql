/*Задача 7 модуль 1: Выбрать 5 героев таким образом, чтобы их сумарный урон был максимальным*/
select * from hero
order by (attack * case
		  		when gameclass in(2, 4) then intelligence
		  		when gameclass in(3, 5) then agility
		  		else strength
		end) desc
limit 5