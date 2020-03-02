USE master
GO


--�����ͺ��̽� �����--

CREATE DATABASE TEST02
ON
PRIMARY			-- PRIMARY �׷쿡 ������ ���� ����
------------------------------
-- ������ ���� ���� --
------------------------------
( NAME = TEST02_DATA ,		--���� �̸�
	-- ��� �� ���ϸ� 
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\test02.mdf' ,
	SIZE = 100MB ,
	MAXSIZE = 200 ,
	FILEGROWTH = 20%
)

------------------------------
-- Ʈ����� �α� ���� ����--
------------------------------

LOG ON
( NAME = TEST02_LOG ,
  --��� �� ���ϸ�
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\test02.ldf' ,
  SIZE = 20MB ,
  MAXSIZE = 50 ,
  FILEGROWTH = 10%
)

-- �����ͺ��̽� ũ�� �ø��� -- 

ALTER DATABASE TEST01
	MODIFY FILE
	( NAME = TEST01, 
	  SIZE = 400,
	  MAXSIZE = UNLIMITED,
	  FILEGROWTH = 10%
	)


-- �����ͺ��̽� ũ�� ����ϱ� --
ALTER DATABASE TEST01
SET
AUTO_SHRINK ON

-- �����ͺ��̽� ���� --

DROP DATABASE TEST02