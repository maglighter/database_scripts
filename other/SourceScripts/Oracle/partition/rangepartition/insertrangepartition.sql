declare 
begin
for c in 1 ..11  loop
   --range partition inserts 
      INSERT INTO user1.ORA_range_partition_table
                  (s_number, s_integer,
                   s_decimal)
values
               ( round(DBMS_RANDOM.random/DBMS_RANDOM.random,10), 
                c,
                trunc(DBMS_RANDOM.random / DBMS_RANDOM.random,8));
   
commit;
end loop;
end;       