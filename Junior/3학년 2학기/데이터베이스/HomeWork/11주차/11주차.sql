
/*1번*/
create table department(
	dept_name varchar(50) not null primary key,
	building varchar(50) not null,
	budget int null
)

INSERT department (dept_name, building, budget) VALUES ('Biology', 'Watson', 90000)
INSERT department (dept_name, building, budget) VALUES ('Comp.Sci.', 'Taylor', 100000)
INSERT department (dept_name, building, budget) VALUES ('Elec.Eng.', 'Taylor', 85000)
INSERT department (dept_name, building, budget) VALUES ('Finance', 'Painter', 120000)
INSERT department (dept_name, building, budget) VALUES ('History', 'Painter', 50000)
INSERT department (dept_name, building, budget) VALUES ('Music', 'Packard', 80000)
INSERT department (dept_name, building, budget) VALUES ('Physics', 'Watson', 70000)

select * from department


/*2번*/

alter table course
alter column course_id varchar(50) not null

alter table course
add primary key(course_id)

alter table course
add foreign key(dept_name) references department(dept_name)

/*3번*/

alter table instructor
alter column ID varchar(50) not null

alter table instructor
add primary key(ID)

alter table instructor
add foreign key(dept_name) references department(dept_name)


/*4번*/
alter table teaches
add foreign key(ID) references instructor(ID)

alter table teaches
add foreign key(course_id) references course(course_id)

s/*5번*/

insert department(dept_name, building, budget)
values('Medicine', 'Laveran', '300000')

insert course(course_id, title, dept_name, credits)
values('MED-101', 'Python', 'Medicine', '2')

insert teaches(ID, course_id, sec_id, semester, years)
values('45565', 'MED-101', '1', 'Fall', '2019')