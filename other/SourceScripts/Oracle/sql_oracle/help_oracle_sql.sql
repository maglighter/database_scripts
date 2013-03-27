--Информация о блокирующих процессах
select c.owner, c.object_name, c.object_type,b.sid, b.serial#, b.status, b.osuser, b.machine
from v$locked_object a , v$session b, dba_objects c
where b.sid = a.session_id
and a.object_id = c.object_id;

--Убить процесс
alter system kill session 'SID, Serial#';

Полезные SQL-запросы

-- Получение данных о версии БД Oracle
SELECT * FROM V$VERSION;

-- Получение текущей даты и времени на сервере
SELECT TO_CHAR(sysdate,'dd/mm/yyyy hh24:mi:ss') FROM DUAL;

-- Получение имён всех таблиц в БД
SELECT TABLE_NAME FROM SYS.ALL_TABLES;

-- Получение имён пользователей в базе данных
SELECT * FROM all_USERS;

-- Получения всех объектов пользователя (таблиц, представлений, последовательностей, индексов и т.д.)
SELECT OBJECT_NAME FROM ALL_OBJECTS WHERE OWNER='...';

-- Получение количества записей в таблице
SELECT T.NR FROM (SELECT ROWNUM R, NUM_ROWS NR, TABLE_NAME TN FROM SYS.ALL_TABLES) T WHERE TN='...';

-- Получение имён всех колонок в заданной таблице
SELECT COLUMN_NAME FROM USER_TAB_COLUMNS WHERE TABLE_NAME='...';

-- Получение информации о типе заданной колонки в заданной таблице
SELECT DATA_TYPE FROM USER_TAB_COLUMNS WHERE TABLE_NAME='...' AND COLUMN_NAME='...';

--Информация о режиме archivelog
v$database 

--Информция о controlfiles
v$controlfile

--Информация о logfiles
v$logfile

--Удаление таблицы со всеми ограничениями
DROP TABLE MyTable CASCADE CONSTRAINTS;

--Проверка состояния аудита
select name,value from v$parameter where name like 'audit%';

--Проверка существующих параметров аудита
select * from dba_stmt_audit_opts union select * from dba_priv_audit_opts;

--Очистка корзины (выполняется под каждой из схем, для которых нужна очистка)
purge recyclebin

--Список всех таблиц находится в all_tables
select * from all_tables where owner='...';

--Узнать кодировку БД
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

в c:\Windows\System32\drivers\etc\hosts надо прописать:
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

в tnsnames.ora:
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