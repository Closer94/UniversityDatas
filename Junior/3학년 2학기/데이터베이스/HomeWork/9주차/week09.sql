select *
from ����������ǥ�ص�����

select [�����������ּ�]
from [����������ǥ�ص�����]
where [�����������ּ�]like '��û���� ����%'

SELECT CONVERT(INT,[1�������ǿ��]) AS Į���� from ����������ǥ�ص�����

select �������, [1�������ǿ��]
from ����������ǥ�ص�����
where �����������ּ� like '%����%'	and [1�������ǿ��] between 1 and 3000 /* == [1�������ǿ��] >= 1 and [1�������ǿ��] <= 3000*/


select distinct *
from [���������������ǥ�ص�����]

/*1��*/
select distinct [��ġ�ñ�����]
from [���������������ǥ�ص�����]
where [��ġ�ñ�����] not like '%��' and
	 [��ġ�ñ�����] not like '%��' and 
	 [��ġ�ñ�����] not like '%��'

/*2��*/
select ��ġ�õ���, count(*) '��ġ ����'
from ���������������ǥ�ص�����
where ��ġ��� in ( select ��ġ���
				   from ���������������ǥ�ص�����
				   where ��ġ��Ҹ� like '%���Ǽ�%' 
				   	)
and [��ġ���] != ''
group by ��ġ�õ���
order by ��ġ�õ��� asc


select ��ġ���
from ���������������ǥ�ص�����
where ��ġ��Ҹ� like '%���Ǽ�%'