/*Модуль 6 задача 2: Вывести название класса и общую сумму денег героев в этом классе,при услови что эта сумма превышает 77000*/
select case
		when gameclass = 1 then 'Танк'
		when gameclass = 2 then 'Маг'
		when gameclass = 3 then 'Лучник'
		when gameclass = 4 then 'Шаман'
		when gameclass = 5 then 'Убийца'
       end, sum(heromoney)
from hero 
group by gameclass 
having sum(heromoney) > 77000;