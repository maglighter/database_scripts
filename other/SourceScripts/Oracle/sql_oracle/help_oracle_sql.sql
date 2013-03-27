--���������� � ����������� ���������
select c.owner, c.object_name, c.object_type,b.sid, b.serial#, b.status, b.osuser, b.machine
from v$locked_object a , v$session b, dba_objects c
where b.sid = a.session_id
and a.object_id = c.object_id;

--����� �������
alter system kill session 'SID, Serial#';

�������� SQL-�������

-- ��������� ������ � ������ �� Oracle
SELECT * FROM V$VERSION;

-- ��������� ������� ���� � ������� �� �������
SELECT TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') FROM DUAL;

-- ��������� ��� ���� ������ � ��
SELECT TABLE_NAME FROM SYS.ALL_TABLES;

-- ��������� ��� ������������� � ���� ������
SELECT * FROM all_USERS;

-- ��������� ���� �������� ������������ (������, �������������, �������������������, �������� � �.�.)
SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OWNER='...';

-- ��������� ���������� ������� � �������
SELECT T.NR FROM (SELECT ROWNUM R, NUM_ROWS NR, TABLE_NAME TN FROM SYS.ALL_TABLES) T WHERE TN='...';

-- ��������� ��� ���� ������� � �������� �������
SELECT COLUMN_NAME FROM USER_TAB_COLUMNS WHERE TABLE_NAME='...';

-- ��������� ���������� � ���� �������� ������� � �������� �������
SELECT DATA_TYPE FROM USER_TAB_COLUMNS WHERE TABLE_NAME='...' AND COLUMN_NAME='...';

--���������� � ������ archivelog
v$database 

--��������� � controlfiles
v$controlfile

--���������� � logfiles
v$logfile

--�������� ������� �� ����� �������������
DROP TABLE MyTable CASCADE CONSTRAINTS;

--�������� ��������� ������
select name,value from v$parameter where name like 'audit%';

--�������� ������������ ���������� ������
select * from dba_stmt_audit_opts union select * from dba_priv_audit_opts;

--������� ������� (����������� ��� ������ �� ����, ��� ������� ����� �������)
purge recyclebin

--������ ���� ������ ��������� � all_tables
select * from all_tables where owner='...';

--������ ��������� ��
select * from nls_database_parameters where parameter like 'NLS%_CHARACTERSET';

SQL> SHUTDOWN IMMEDIATE;   -- or NORMAL
    <do a full backup>
SQL> STARTUP MOUNT; 
SQL> ALTER SYSTEM ENABLE RESTRICED SESSION;
SQL> ALTER SYSTEM SET JOB_QUEUE_PROCESSES=0;
SQL> ALTER DATABASE OPEN;
SQL> ALTER DATABASE CHARACTER SET UTF8;
SQL> SHUTDOWN IMMEDIATE;   -- or NORMAL
SQL> STARTUP;

alter database add supplemental log data;

SHUTDOWN IMMEDIATE;
startup mount;
alter database archivelog;
alter database open;

ASM Oracle  

� c:\Windows\System32\drivers\etc\hosts ���� ���������:
#public
10.51.4.98 rac1.localdomain rac1
10.51.4.99 rac2.localdomain rac2
#private
192.168.2.98 rac1-priv.localdomain rac1-priv
192.168.2.99 rac2-priv.localdomain rac2-priv
#virtual
10.51.4.198 rac1-vip.localdomain rac1-vip
10.51.4.200 rac2-vip.localdomain rac2-vip
#SCAN
10.51.4.100 rac-scan.localdomain rac-scan

� tnsnames.ora:
IDR_RAC =
 (DESCRIPTION =
   (ADDRESS = (PROTOCOL = TCP)(HOST = rac-scan)(PORT = 1521))
   (CONNECT_DATA =
     (SERVER = DEDICATED)
     (SERVICE_NAME = IDR)
	)
	)
select value from v$parameter where lower(name) like '%dest%';

SELECT value FROM gv$parameter WHERE name LIKE '%compatible%';