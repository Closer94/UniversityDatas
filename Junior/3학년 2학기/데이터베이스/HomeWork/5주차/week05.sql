select *
from EMPLOYEE


select top(1) eno, ename, hiredate
from employee
order by hiredate asc



select top(1) * 
from employee
where manager is not null
order by eno desc


select *
from employee
where commission is not null

select ename, job
from employee
where eno >= 1004 and eno <= 1008

select ename, job
from employee
where job = '����' or job = '����' or job = '����' or job = '����'


select eno "���", ename "�̸�", salary * (DATEDIFF(DD, hiredate, '2019-09-27')/ 365) "������"
from employee

