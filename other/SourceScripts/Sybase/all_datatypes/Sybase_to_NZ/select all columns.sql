SELECT 
cols.colid, 
cols.status, 
cols.name, 
cols.length, 
upper(types.name), 
cols.type, 
cols.prec, 
cols.scale, 
cols.offset, 
users.name, 
tabs.name, 
cols.usertype 
FROM syscolumns cols 
INNER JOIN sysobjects tabs ON tabs.id = cols.id 
INNER JOIN systypes types ON types.usertype = cols.usertype 
INNER JOIN sysusers users ON tabs.uid = users.uid 
WHERE users.name  = 'dbo' AND tabs.type in ('U');

