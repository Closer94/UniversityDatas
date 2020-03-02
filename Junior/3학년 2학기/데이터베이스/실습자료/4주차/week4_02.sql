USE master
GO

CREATE DATABASE deleteTest
GO

USE deleteTest
GO

CREATE TABLE memberTest(
	id INT IDENTITY(1,1),
	name VARCHAR(20)
)

INSERT memberTest VALUES('�質��')
INSERT memberTest VALUES('�̹���')
INSERT memberTest VALUES('�����')

DELETE FROM memberTest

CREATE DATABASE truncateTest
GO

USE truncateTest
GO

CREATE TABLE memberTest2(
	id INT IDENTITY(1,1),
	name VARCHAR(20)
)

INSERT memberTest2 VALUES('�質��')
INSERT memberTest2 VALUES('�̹���')
INSERT memberTest2 VALUES('�����')

TRUNCATE TABLE memberTest2

INSERT memberTest2 VALUES('�質��')
INSERT memberTest2 VALUES('�̹���')
INSERT memberTest2 VALUES('�����')