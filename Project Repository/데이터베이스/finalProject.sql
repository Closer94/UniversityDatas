
-- Toeic ������ ���̽� ����
create database Toeic
go

-- Toeic �����ͺ��̽� ���
use Toeic
go
 /*
lecture ���̺��� ���ǿ� ���� ������ ��� ���̺��̴�.
���̺� ������ ����ID �� �����ϰ� null�� ��������ʴ� ������ lectureID 
(����ID�� primary key�� �����Ͽ� ���Ǹ� �ĺ��Ҽ��ְ� �ϰ�
���� ID������ identity(1000, 1)�� �����Ͽ� 1001���� �ڵ����� ���� �־��ش�.)
�������� �����ϴ� ũ�Ⱑ 20�� �������ڿ� lectureKind
����(����)�� ID�� �����ϴ� ������ gradeID
���Ǹ��� �����ϴ� ũ�Ⱑ 20�� �������ڿ� lectureName (null�� ������� ����)
�����Ḧ �����ϴ� ������ lectureFee   
 */
create table lecture(
	lectureID int identity(1001, 1) not null primary key,
	lectureKind varchar(20),
	gradeID int,
	instructorID int not null,
	lectureName varchar(20),
	lectureFee int
)

/*
customer ���̺��� ���� ������ ��� ���̺��̴�.
���̺� ������ ���� ID�� �����ϴ� ũ�Ⱑ 30�� �������ڿ� userID
(���� �ĺ��ϴ� �������� �����ϱ� ���� primary key�� �����Ѵ�.
primary key Ư���� ���߱� ���� null�� ������� ����)
���� �̸��� �����ϴ� ũ�Ⱑ 20�� �������ڿ� userName
���� ��������� �����ϴ� ũ�Ⱑ 30�� �������ڿ� birth
���� �޴���ȭ��ȣ�� �����ϴ� ũ�Ⱑ 30�� �������ڿ� tel
������ ID�� �����ϴ� ������ lectureID (null�� ������� ����)
*/
create table customer(
	userID varchar(30) not null primary key,
	userName varchar(20),
	birth varchar(30),
	email varchar(35),
	tel varchar(30),
	lectureID int 
)

/*
shoppingBasket ���̺��� ���� ��ٱ��Ϸ� �־�� ���� ������ ��� ���̺��̴�.
���̺� ������ ��ٱ�����ID�� �����ϴ� ������ shoppingBasketID
(��ٱ���ID�� primary key�� �����Ͽ� ��ٱ��ϸ� �ĺ��Ҽ��ְ� �ϰ�
��ٱ���ID������ identity(3000, 1)�� �����Ͽ� 3001���� �ڵ����� ���� �־��ش�.
rimary key Ư���� ���߱� ���� null�� ������� ����)
����ID�� �����ϴ� ũ�Ⱑ 30�� �������ڿ� userID (null�� ������� ����)
��������ID�� �����ϴ� ������ openingLectureID (null�� ������� ����)
*/
create table shoppingBasket(
	shoppingBasketID int identity(3001, 1) not null primary key,
	userID varchar(30) not null,
	openingLectureID int not null
	
)

/*
openingLecture ���̺��� ������ ������ ������ ��� ���̺��̴�.
���̺� ������ ������ ����ID�� �����ϴ� ������ openingLectureID
(������ ����ID�� primary key�� �����Ͽ� ������ ���Ǹ� �ĺ��Ҽ��ְ� �ϰ�
������ ����ID������ identity(4000, 1)�� �����Ͽ� 4001���� �ڵ����� ���� �־��ش�.
primary key Ư���� ���߱� ���� null�� ������� ����)
����ID�� �����ϴ� ������ lectureID (null�� ������� ����)
������ ���� ������ �����ϴ� ũ�Ⱑ 10�� �������ڿ� lectureDay
������ ���� ���� �ð��� �����ϴ� ũ�Ⱑ 20�� �������ڿ� lectureTime
������ ���ǰ� �����ϴ� ��¥�� �����ϴ� ũ�Ⱑ 20�� �������ڿ� lectureStart
������ ���ǰ� ������ ��¥�� �����ϴ� ũ�Ⱑ 20�� �������ڿ� lectureEnd
*/
create table openingLecture(
	openingLectureID int identity(4001, 1) not null primary key,
	lectureID int not null,
	lectureDay varchar(10),
	lectureTime varchar(20),
	lectureStart varchar(20),
	lectureEnd varchar(20),
)

/*
instructor ���̺��� ������ ������ ��� ���̺��̴�.
���̺� ������ ����ID�� �����ϴ� ������ instructorID
(����ID�� primary key�� �����Ͽ� ���縦 �ĺ��Ҽ��ְ� �ϰ�
����ID������ identity(5000, 1)�� �����Ͽ� 5001���� �ڵ����� ���� �־��ش�.
primary key Ư���� ���߱� ���� null�� ������� ����)
������� �����ϴ� ũ�Ⱑ 20�� �������ڿ� instructorName
���簡 �ô� ������ ����(����)�� �����ϴ� ������ gradeID
���簡 �ô� ���������� �����ϴ� ũ�Ⱑ 20�� �������ڿ� chargePart
*/
create table instructor(
	instructorID int identity(5001, 1) not null primary key,
	instructorName varchar(20),
	gradeID int,
	chargePart varchar(20)
)

/*
placementTest ���̺��� ��ġ��翡 ���� ������ ��� ���̺��̴�.
���̺� ������ ��ġ���ID�� �����ϴ� ������ placementTestID
(��ġ���ID�� primary key�� �����Ͽ� ��ġ��縦 �ĺ��Ҽ��ְ� �ϰ�
��ġ���ID������ identity(6000, 1)�� �����Ͽ� 6001���� �ڵ����� ���� �־��ش�.
primary key Ư���� ���߱� ���� null�� ������� ����)
��ġ��縦 �� ����ID�� �����ϴ� ũ�Ⱑ 30�� �������ڿ� userID (null�� ������� ����)
��ġ��縦 �� ��¥�� ����ִ� ũ�Ⱑ 30�� �������ڿ� testDate
��ġ��縦 ���� ����(����)�� �����ϴ� ������ gradeID
*/
create table placementTest(
	placementTestID int identity(6001, 1) not null primary key,
	userID varchar(30) not null,
	testDate varchar(30),
	gradeID int
)

/*
grade ���̺��� ���� ����(����)�� ���� ������ ��� ���̺��̴�.
���̺� ������ ������ ����(����)�� ID�� �����ϴ� ������ gradeID
(primary key�� �����Ͽ� ����(����)�� �ĺ��ϰ� ���ش�.
primary key Ư���� ���߱� ���� null�� ������� ����)
����(����)�� �����ϴ� ũ�Ⱑ 20�� �������ڿ� grade
*/
create table grade(
	gradeID int not null primary key,
	grade varchar(20) 
)

/*foreign key ����*/

-- lecture���̺��� instructorID �÷��� instructor���̺��� instructorID�� �����ϰ� foreign key �����Ѵ�.
alter table lecture
add foreign key(instructorID) references instructor(instructorID)

-- lecture���̺��� gradeID �÷��� grade���̺��� gradeID�� �����ϰ� foreign key �����Ѵ�.
alter table lecture
add foreign key(gradeID) references grade(gradeID)

-- customer���̺��� lectureID �÷��� lecture���̺��� lectureID�� �����ϰ� foreign key �����Ѵ�.
alter table customer
add foreign key(lectureID) references lecture(lectureID)

-- shoppingBasket���̺��� openingLectureID �÷��� openingLecture���̺��� openingLectureID�� �����ϰ� foreign key �����Ѵ�.
alter table shoppingBasket
add foreign key(openingLectureID) references openingLecture(openingLectureID)

-- shoppingBasket���̺��� userID �÷��� customer���̺��� userID�� �����ϰ� foreign key �����Ѵ�.
alter table shoppingBasket
add foreign key(userID) references customer(userID)

-- openingLecture���̺��� lectureID �÷��� lecture���̺��� lectureID�� �����ϰ� foreign key �����Ѵ�.
alter table openingLecture
add foreign key(lectureID) references lecture(lectureID)

-- instructor���̺��� gradeID �÷��� grade���̺��� gradeID�� �����ϰ� foreign key �����Ѵ�.
alter table instructor
add foreign key(gradeID) references grade(gradeID)

-- placementTest���̺��� gradeID �÷��� grade���̺��� gradeID�� �����ϰ� foreign key �����Ѵ�.
alter table placementTest
add foreign key(gradeID) references grade(gradeID)

-- placementTest���̺��� userID �÷��� customer���̺��� userID�� �����ϰ� foreign key �����Ѵ�.
alter table placementTest
add foreign key(userID) references customer(userID)

/*grade ������ �Է�*/
insert into grade values(10, '����')
insert into grade values(20, '�ʼ�')
insert into grade values(30, '�Թ�')
insert into grade values(40, '�⺻')
insert into grade values(50, '�߱�')
insert into grade values(60, '����')
insert into grade values(70, '����')


/*instructor ������ �Է�*/
insert into instructor values('������', 30, 'LC')
insert into instructor values('������', 50, 'LC')
insert into instructor values('���ξ�', 40, 'LC')
insert into instructor values('������', 30, 'RC')
insert into instructor values('���ҿ�', 50, 'RC')
insert into instructor values('������', 70, 'RC')
insert into instructor values('�ɵ���', 40, 'Part7')
insert into instructor values('������', 50, 'Part7')
insert into instructor values('�ڿ���', 70, 'Part7')

/*lecture ������ �Է�*/
insert into lecture values('LC', 30, 5001, '���� �Թ� LC', 70000)
insert into lecture values('LC', 50, 5002, '���� �߱� LC', 95000)
insert into lecture values('RC', 30, 5004, '���� �Թ� RC', 78000)
insert into lecture values('RC', 70, 5006, '���� �Թ� RC', 88000)
insert into lecture values('Part7', 50, 5008, '���� �Թ� Part7', 138000)
insert into lecture values('Part7', 70, 5008, '���� ���� Part7', 138000)

/*openingLecture ������ �Է�*/
insert into openingLecture values(1001, '����', '10:00~10:50', '2019-12-02', '2019-12-30')
insert into openingLecture values(1002, '�ָ�', '13:00~13:50', '2019-12-02', '2019-12-30')
insert into openingLecture values(1003, '������', '09:00~09:50', '2019-12-02', '2019-12-30')
insert into openingLecture values(1004, 'ȭ���', '14:00~14:50', '2019-12-02', '2019-12-30')
insert into openingLecture values(1005, '����', '11:00~11:50', '2019-12-02', '2019-12-30')
insert into openingLecture values(1006, '�ָ�', '15:00~15:50', '2019-12-02', '2019-12-30')


/*customer ������ �Է�*/
insert into customer values('sonsational','�����', '1992-07-08', 'son@naver.com', '010-1234-5678', null)
insert into customer values('goalblocker', '��±�', '1990-09-30', 'block@daum.net', '010-1472-5893', 1004)
insert into customer values('youngboy' ,'�̰���', '2001-02-19', 'valencia@naver.com', '010-3256-8745', 1006)
insert into customer values('bullstriker', 'Ȳ����', '1996-01-26', 'bull@google.com', '010-4265-9624', null)
insert into customer values('zulatan', '��ſ�', '1988-04-14', 'tallGuy@daum.net', '010-7865-5214', null)
insert into customer values('shine', 'Ȳ����', '1992-03-27', 'hawng@daum.net', '010-5369-1478', 1002)


/*placementTest ������ �Է�*/
insert into placementTest values('sonsational', '2019-11-13', 70)
insert into placementTest values('goalblocker', '2019-11-07', 30)
insert into placementTest values('youngboy', '2019-11-11', 50)
insert into placementTest values('bullstriker', '2019-10-30', 20)
insert into placementTest values('zulatan', '2019-11-01', 50)
insert into placementTest values('shine', '2019-11-09', 30)


/*
���1. ��ġ��縦 ���� ���� ���� ��õ
������� ��ġ��� �������� ������ ���� ���� ��õ���ֱ�
*/

select l.lectureKind "��������", l.lectureName "���Ǹ�", i.instructorName "�����", o.lectureDay "��������", o.lectureTime "�����ð�", l.lectureFee "������" 
from lecture l, instructor i, openingLecture o
where l.instructorID = i.instructorID and l.lectureID = o.lectureID
and l.gradeID = (select gradeID 
		from placementTest
		where userID = (
						select userID
						from customer
						where userName = '�����' 
						))

/*
���2. ������ �´� ���� ���� ã��
���Ϳ� �����ִ� ���� ���Ƿ� ���� ã�ƺ���
ã�����ϴ� ����: 
	1)��������: LC, 2)����: �Թ�, 3)��������: ����
*/
select l.lectureKind "��������", l.lectureName "���Ǹ�", i.instructorName "�����", o.lectureDay "��������", o.lectureTime "�����ð�", l.lectureFee "������" 
from lecture l, instructor i, openingLecture o
where l.instructorID = i.instructorID and l.lectureID = o.lectureID
and l.lectureKind = 'LC' and i.gradeID = 30 and o.lectureDay = '����'


/*
���3. ��ٱ��� �߰��ϴ� ���
����: ��ſ��� �ָ��� �̿��ؼ� ������θ� �Ϸ��� �Ѵ�.
	  �ָ��� ������ ���Ǹ� ��� ��ٱ��Ͽ� �η����Ѵ�.
*/
insert into shoppingBasket
(c.userID, o.openingLectureID)
select c.userID, o.openingLectureID
from customer c, openingLecture o
where c.userID = 'zulatan' and o.openingLectureID in (select o.openingLectureID
													 from openingLecture o
													 where o.lectureDay = '�ָ�'
													 )														

select * from shoppingBasket



