use test1007
go

select *
from instructor;

/*���� 1��*/
update instructor
set dept_name = 'School of S.W'
where dept_name = 'Comp.Sci.'

select *
from instructor;

/*���� 2��*/
select *
from course

update course
set dept_name = 'School of S.W'
where dept_name = 'Comp.Sci.'

/*���� 3��*/
insert into course
values('CS-145', 'Relational Database Programming', 'School of S.W.', '3')

select *
from course

/*���� 4��: �� ����: 7��(3���̻� �����ϸ� �н�)*/

select distinct ��ġ�ñ�����
from ���������������ǥ�ص�����
where ��ġ�ñ����� not like '%��' and	
	��ġ�ñ����� not like '%��' and
	��ġ�ñ����� not like '%��' and
	���������θ��ּ� not like '%����%'
	or ��ġ�ñ����� like '% %'


select distinct *
from ���������������ǥ�ص�����
where ��ġ�ñ����� not like '%��' and	
	��ġ�ñ����� not like '%��' and
	��ġ�ñ����� not like '%��' and
	���������θ��ּ� not like '%����%'
	or ��ġ�ñ����� like '% %'

update ���������������ǥ�ص�����
set ��ġ�ñ����� = '���ȱ�'
where ��ġ�ñ����� = '����ϵ� ���ȱ�'

update ���������������ǥ�ص�����
set ��ġ�ñ����� = '���ֽ�'
where ���������θ��ּ� like '%���ֽ�%'
	and ��ġ�ñ����� = '��󳲵�'

update ���������������ǥ�ص�����
set ��ġ�ñ����� = 'â����'
where ���������θ��ּ� like '%â����%'
	and ��ġ�ñ����� = '��󳲵�'

update ���������������ǥ�ص�����
set ��ġ�ñ����� = '����'
where ��ġ�ñ����� = '����û'

update ���������������ǥ�ص�����
set ��ġ�ñ����� = '������'
where ��ġ�ñ����� = '����Ư���� ������'
