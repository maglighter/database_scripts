connect to sample user fabdulin using Asdf11A@


CREATE TABLE SRC.ALL_TYPES_DB2  (
		  S_SMALLINT SMALLINT , 
		  S_INTEGER INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY, 
		  S_BIGINT BIGINT , 
		  S_DECIMAL DECIMAL(10,2) , 
		  S_REAL REAL , 
		  S_DOUBLE DOUBLE , 
		  S_CHAR CHAR(100) , 
		  S_VARCHAR VARCHAR(2000) , 
		  S_CLOB CLOB(1048576) LOGGED NOT COMPACT , 
		  S_GRAPHIC GRAPHIC(100) , 
		  S_VARGRAPHIC VARGRAPHIC(500) , 
		  S_DBCLOB DBCLOB(1048576) LOGGED NOT COMPACT , 
		  S_BLOB BLOB(1048576) LOGGED NOT COMPACT , 
		  S_DATE DATE , 
		  S_TIME TIME , 
		  S_TIMESTAMP TIMESTAMP , 
		  S_LONG_VARCHAR LONG VARCHAR , 
		  S_LONG_VARGRAPHIC LONG VARGRAPHIC )   
                  @

ALTER TABLE SRC.ALL_TYPES_DB2 DATA CAPTURE CHANGES INCLUDE LONGVAR COLUMNS@


ALTER TABLE SRC.ALL_TYPES_DB2
	ADD CONSTRAINT PK_ALL_TYPES PRIMARY KEY
		(S_INTEGER)@


COMMIT WORK@

CONNECT RESET@

TERMINATE@
