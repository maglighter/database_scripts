CREATE OR REPLACE TYPE varray_varchar AS VARRAY(10) OF VARCHAR2(128);
CREATE OR REPLACE TYPE varray_date AS VARRAY(10) OF DATE;
CREATE OR REPLACE TYPE varray_number AS VARRAY(10) OF NUMBER(38,10);
CREATE OR REPLACE TYPE varray_number AS VARRAY(10) OF INTEGER;

CREATE TABLE tab_varray_varchar (id number, col1 varray_varchar);

INSERT INTO tab_varray_varchar VALUES (1, varray_varchar('A'));
INSERT INTO tab_varray_varchar VALUES (2, varray_varchar('B', 'C'));
INSERT INTO tab_varray_varchar VALUES (3, varray_varchar('D', 'E', 'F'));
INSERT INTO tab_varray_varchar VALUES (4, varray_varchar('1', '2', '3', '4', '5', '6', '7', '8', '9', '10'));
COMMIT;

SELECT t1.id, t2.column_value FROM varray_table t1, TABLE(t1.col1) t2;

set serveroutput on
declare
  v_vcarray varray_varchar;
begin
  for c1 in (select * from tab_varray_varchar) loop
      dbms_output.put_line('ID...'|| c1.id);
      FOR i IN c1.col1.FIRST..c1.col1.LAST LOOP
          dbms_output.put_line('...Varray value '||i||' : '|| c1.col1(i));
      END LOOP;
  end loop;
end;
/

CREATE SEQUENCE SEQ_VARRAY_ID
  START WITH 1
  MAXVALUE 9999999999999999999999999999
  MINVALUE 0
  NOCYCLE
  NOCACHE
  NOORDER;

CREATE OR REPLACE TRIGGER varray_ID_TRG_Varchar
BEFORE INSERT
ON tab_varray_varchar 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
tmpVar NUMBER;
BEGIN
   tmpVar := 0;

    IF :NEW.ID IS NULL 
    THEN  
        SELECT SEQ_VARRAY_ID.NEXTVAL INTO tmpVar FROM dual;
        :NEW.ID:= tmpVar;
    END IF;
   EXCEPTION
     WHEN OTHERS THEN
       -- Consider logging the error and then re-raise
       RAISE;
END varray_ID_TRG_Varchar;
/
show errors

--Increasing the Size of an Element Type in a VARRAY
--INVALIDATE: Invalidates all dependent objects
--CASCADE: Propagates the change to its type and table dependents
ALTER TYPE vcarray MODIFY ELEMENT TYPE VARCHAR2(152) CASCADE;

--Increasing the VARRAY Limit Size
--INVALIDATE: Invalidates all dependent objects
--CASCADE: Propagates the change to its type and table dependents
ALTER TYPE vcarray MODIFY LIMIT 100 INVALIDATE;

--Drop type
--FORCE: drop the type even if it has dependent database objects. 
----Oracle Database marks UNUSED all columns dependent on the type to be dropped, 
----and those columns become inaccessible.
--VALIDATE:  checks for stored instances of this type within substitutable columns of any of its supertypes
Drop Type vcarray FORCE;