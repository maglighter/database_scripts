CREATE TABLE "DBSYNC_USER"."ORDERS" 
   (    "ORDER_ID" NUMBER(20,0), 
    "CUSTOMER_ID" NUMBER(38,0), 
    "MASTER_CUSTOMER_ID" NUMBER(38,0), 
    "PRODUCT_ID" NUMBER(38,0), 
    "UNITS_SOLD" NUMBER(38,0), 
    "PRICE_PER_UNIT" NUMBER(12,2), 
    "LINE_TOTAL" NUMBER(12,2), 
    "ORDER_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MYTABLESPACE" ;


alter table "DBSYNC_USER"."ORDERS" add (new_col5 number(10));

insert into "DBSYNC_USER"."ORDERS" (order_id, customer_id, new_col4) values (44,44,44);

alter table  "DBSYNC_USER"."ORDERS" drop (new_col1 ,new_col2, new_col3, new_col4);

describe "DBSYNC_USER"."ORDERS";

alter system archive log current;