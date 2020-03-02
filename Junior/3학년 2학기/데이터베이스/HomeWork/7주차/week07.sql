use MagicCorp
go

select * 
from employee

select *
from department

select * 
from SALGRADE


/*1��*/
select d.dname "�μ���", count(d.dname) "���� ��"
from employee e, department d
where d.dno = e.dno
group by d.dname

/*2��*/
select d.dname "�μ���", avg(s.grade) "��ձ޿����"
from employee e, department d ,salgrade s
where e.dno = d.dno and salary >= lowsal and salary <= highsal
group by d.dname



/*3��*/
select e.ename "�����", d.dname "�ҼӺμ���", s.grade "�޿����",
	dense_rank() over(order by s.grade) "����"
from employee e, department d, salgrade s
where e.dno = d.dno and e.salary between s.lowsal and s.highsal


/*4��*/
select distinct salary "�޿�"
from employee


/*5��*/
select min(hiredate) "�Ի���"
from employee


/*6��*/
select min(salary) "�޿�"
from employee


/*7��*/
select 
	d.dno "�μ���ȣ", 
	d.dname "�μ���",
	d.loc "�μ� ��ġ",
	count(d.dno) "�Ҽ� ���� ��",
	avg(e.salary) "�Ҽ� ���� ��� �޿�",
	sum(e.salary) "�Ҽ� ���� �޿� ��",
	avg(s.grade) "�Ҽ� ���� ��� �޿� ���"
from employee e, department d, salgrade s
where e.dno = d.dno and e.salary between s.lowsal and s.highsal
group by d.dno, d.dname, d.loc








/*8��*/
use test1007
go

select * from course
select * from instructor
select * from teaches

/*8��*/
select 
	i.name "����",
	i.dept_name "�а�",
	c.title "���� �̸�",
	c.credits "�̼�����",
	t.years "�����⵵",
	t.semester "��������"
from course c, instructor i, teaches t
where i.id = t.id and t.course_id = c.course_id
