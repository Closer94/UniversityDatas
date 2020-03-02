USE master
GO

CREATE DATABASE MagicCorp -- MagicCorp �����ͺ��̽� �����ϱ�
GO
USE MagicCorp
GO

CREATE TABLE DEPARTMENT( -- �μ� ���̺� �����ϱ�
	DNO INT PRIMARY KEY,
	DNAME NVARCHAR(20), 
	LOC NVARCHAR(20)
);
CREATE TABLE EMPLOYEE(   -- ��� ���̺� �����ϱ�
	ENO INT PRIMARY KEY,
	ENAME NVARCHAR(20), 
	JOB NVARCHAR(20),
	MANAGER INT, HIREDATE DATETIME,
	SALARY INT, COMMISSION INT,
	DNO INT REFERENCES DEPARTMENT(DNO)
);
CREATE TABLE SALGRADE(   -- �޿� ���̺� �����ϱ�
	GRADE INT PRIMARY KEY IDENTITY,
	LOWSAL INT, 
	HIGHSAL INT
);
INSERT INTO DEPARTMENT VALUES(10, '�渮��', '����'); INSERT INTO DEPARTMENT VALUES(20, '�λ��', '��õ');
INSERT INTO DEPARTMENT VALUES(30, '������', '����'); INSERT INTO DEPARTMENT VALUES(40, '�����', '����');
INSERT INTO SALGRADE VALUES(901, 1000); 
INSERT INTO SALGRADE VALUES(501, 900);
INSERT INTO SALGRADE VALUES(401, 500);  
INSERT INTO SALGRADE VALUES(301, 400);
INSERT INTO SALGRADE VALUES(201, 300);
INSERT INTO EMPLOYEE VALUES(1001, '����', '���', 1013, '2007-03-01', 300, NULL, 20);
INSERT INTO EMPLOYEE VALUES(1002, '�ѿ���', '�븮', 1005, '2007-04-02', 250,   80, 30);
INSERT INTO EMPLOYEE VALUES(1003, '����ȣ', '����', 1005, '2005-02-10', 500,  100, 30);
INSERT INTO EMPLOYEE VALUES(1004, '�̺���', '����', 1008, '2003-09-02', 600, NULL, 20);
INSERT INTO EMPLOYEE VALUES(1005, '�ŵ���', '����', 1005, '2005-04-07', 450,  200, 30);
INSERT INTO EMPLOYEE VALUES(1006, '�嵿��', '����', 1008, '2003-10-09', 480, NULL, 30);
INSERT INTO EMPLOYEE VALUES(1007, '�̹���', '����', 1008, '2004-01-08', 520, NULL, 10);
INSERT INTO EMPLOYEE VALUES(1008, '���켺', '����', 1003, '2004-03-08', 500,    0, 30);
INSERT INTO EMPLOYEE VALUES(1009, '�ȼ���', '����', NULL, '1996-10-04',1000, NULL, 20);
INSERT INTO EMPLOYEE VALUES(1010, '�̺���', '����', 1003, '2005-04-07', 500, NULL, 10);
INSERT INTO EMPLOYEE VALUES(1011, '�����', '���', 1007, '2007-03-01', 280, NULL, 30);
INSERT INTO EMPLOYEE VALUES(1012, '������', '���', 1006, '2007-08-09', 300, NULL, 20);
INSERT INTO EMPLOYEE VALUES(1013, '������', '����', 1003, '2002-10-09', 560, NULL, 20);
INSERT INTO EMPLOYEE VALUES(1014, '���μ�', '���', 1006, '2007-11-09', 250, NULL, 10);
GO

SELECT * FROM EMPLOYEE

SELECT ENO, ENAME FROM EMPLOYEE

SELECT ENAME, SALARY, SALARY*12 FROM EMPLOYEE


select ename, salary, job, dno, isnull(commission, 0),
salary*12, salary*12+isnull(commission, 0)
from employee

select ename, salary*12+isnull(commission, 0) as ����
from EMPLOYEE

select ename, salary*12+isnull(commission, 0) "��__��"
from EMPLOYEE

select dno from employee

select distinct dno from employee

select * from employee
where salary >= 500

select * from employee
where dno = 10

select * from employee
where ename = '�̹���'

select * from employee
where hiredate <= '2008/01/01'

select * from employee
where dno = 10 and job = '����'

select * from employee
where dno = 10 or job = '����'

select * from employee
where not dno = 10

select * from employee
where dno <> 10

select * from employee
where salary >= 400 and salary <= 500

select * from employee
where salary < 400 or salary > 500

select * from employee
where commission = 80 or commission = 100 or commission = 200

select * from employee
where salary between 400 and 500

select * from employee
where salary not between 400 and 500

select * from employee
where hiredate between '2003/01/01' and '2003/12/31'

select * from employee
where commission in(80, 100, 200)

select * from employee
where commission not in(80, 100, 200)

select * from employee
where ename like '��%'

select * from employee
where ename like '%��%'

select * from employee
where ename like '%��'

select * from employee
where ename like '_��%'

select * from employee
where ename like '__��%'

select * from employee
where ename not like '%��%'

select * from employee
where commission is null

select * from employee
where commission is not null

select * from employee
order by salary asc

select * from employee
order by salary 

select * from employee
order by salary desc

select * from employee
order by ename

select * from employee
order by hiredate desc

select * from employee
order by salary desc, ename asc;

select top(20) percent * 
from employee
order by salary desc

/*=========================�ǽ�=========================*/

select ename, salary, hiredate from employee

select dno "�μ���ȣ", dname  "�μ���"
from department

select distinct job 
from employee

select eno, ename, salary from employee
where salary <= 300

select eno, ename, salary from employee
where ename = '����ȣ'

select eno, ename, salary from employee
where salary in(250, 300, 500)

select eno, ename, salary from employee
where salary not in(250, 300, 500)

select eno, ename from employee
where ename like '��%%'

select * from employee
where manager is null

select eno, ename, salary from employee
