/*Модуль 2 задача 2: Для каждого героя посчитать урон который они наносят. Урон мага = интеллект * базовый урон, урон танка = сила * базовый урон, урон ассасина = ловкость * базовый урон*/
select heroname, (attack * case
		  		when gameclass in(2, 4) then intelligence
		  		when gameclass in(3, 5) then agility
				else strength
		  	end) as Damage
from hero