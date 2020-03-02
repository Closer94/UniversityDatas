use MagicCorp
go

select sum(salary) "�޿� �Ѿ�"
from employee

select sum(commission) "Ŀ�̼� �Ѿ�"
from employee

select avg(salary) "�޿� ���"
from employee

select max(salary) "�ִ� �޿�", min(salary) "�ּ� �޿�"
from employee

select count(commission) "Ŀ�̼��� �޴� ����� ��"
from employee

select count(*) "��ü ����� ��", count(commission) "Ŀ�̼��� �޴� ����� ��"
from employee

select job from employee
order by employee

select count(job) "�μ���(�ߺ�O)"
from employee

select distinct job from employee
order by job


select count(distinct job) "�μ���(�ߺ�X)"
from employee

select dno from employee
group by dno

select dno, avg(salary) "�޿����"
from employee
group by dno

select dno, sum(salary) "�޿��Ѿ�", avg(salary) "�޿� ���"
from employee
group by dno

select dno, max(salary) "�ִ� �޿�", min(salary) "�ּ� �޿�"
from employee
group by dno

select dno, count(*) "�μ��� �����", count(commission) "Ŀ�̼ǹ޴� �����"
from employee
group by dno

select dno, avg(salary)
from employee
group by dno
having avg(salary) >= 500

select dno, max(salary) "�ִ�޿�", min(salary) "�ּұ޿�"
from employee
group by dno
having max(salary) > 500

select dno, job, avg(salary) 
from employee
group by dno, job
order by dno asc

select dno, job, sum(salary) "�޿��հ�" 
from employee
group by dno, job with rollup
order by dno 


select dno, job, sum(salary) "�޿��Ѿ�" 
from employee
group by dno, job with rollup

select dno, job, sum(salary) "�޿��Ѿ�"
from employee
group by dno, job with cube
order by dno 

select dno, job, sum(salary) "�޿��Ѿ�"
from employee
group by dno, job with rollup

select dno, job, sum(salary) "�޿��Ѿ�"
from employee
group by dno, job with cube
order by dno desc, job desc

select dno, job, sum(salary) "�Ѿ�"
from employee group by dno, job with cube
order by dno desc, sum(salary) asc

select ename, dno, 
	case when dno=10 then '�渮��'
	when dno=20 then '������'
	when dno=30 then '�λ��'
	end "dname"
from employee

USE test_week06
go

select * from test

select year, [1], [2], [3], [4]
from test
pivot(sum(amount)
for quarter
in([1], [2], [3], [4])) as pvt

create table test2
(
	year int,
	Q1 decimal(2,1),
	Q2 decimal(2,1),
	Q3 decimal(2,1),
	Q4 decimal(2,1)
)

insert into test2 values(2009, 1.1, 1.2, 1.3, 1.4)
insert into test2 values(2010, 2.1, 2.2, 2.3, 2.4)

select * from test2

select year, quarter, amount
from test2
unpivot(amount
for quarter 
in([Q1], [Q2], [Q3], [Q4])) as unpvt

select year, quarter, amount,
	rank() over(order by amount desc) "����"
from test

select year, quarter, amount,
	dense_rank() over(order by amount desc) "����"
from test

select year, quarter, amount,
	row_number() over(order by amount desc) "����"
from test

select year, quarter, amount,
	ntile(6) over(order by amount desc) "����"
from test

select year, quarter, amount,
	ntile(5) over(order by amount desc) "����"
from test

select year, quarter, amount,
	rank() over(partition by year order by amount desc) "����"
from test