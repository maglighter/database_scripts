select * from v$logfile;

select * from v$log;

alter system checkpoint;

Alter database add logfile group 4 'C:\APP\EKUYANOV\ORADATA\ORCL\REDO04.LOG'
size 500M reuse;
Alter database add logfile group 5 'C:\APP\EKUYANOV\ORADATA\ORCL\REDO05.LOG'
size 500M reuse;
Alter database add logfile group 6 'C:\APP\EKUYANOV\ORADATA\ORCL\REDO06.LOG'
size 500M reuse;

Alter system switch logfile;
Alter system switch logfile;

Alter system switch logfile;

Alter database drop logfile group 1;
Alter database drop logfile group 2;
Alter database drop logfile group 3;
