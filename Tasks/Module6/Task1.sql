/*Модуль 6 задача 1: Вывести наибольший классовый урон*/
select max(attack * case
		  	   when gameclass in(2, 4) then intelligence
		  	   when gameclass in(3, 5) then agility
			   else strength
		  	 end) 
    group by gameclass;