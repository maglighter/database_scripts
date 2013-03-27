create table DBSYNC_USER.TAB_NUMBER_TYPE (S_ID_COL number,
                                            S_ONE_COL number,
                                            S_TWO_COL INTEGER,
                                            S_THREE_COL BINARY_DOUBLE,
                                            S_FOUR_ABC BINARY_FLOAT,
                                            S_FIVE_COL FLOAT(126));
                                            
                                    
create table DBSYNC_USER.TAB_CHAR_TYPE (S_ID_COL number,
                                            S_ONE_COL VARCHAR2(4000 BYTE),
                                            S_TWO_COL CHAR(200 BYTE),
                                            S_THREE_ABC NVARCHAR2(2000),
                                            S_FOUR_COL NCHAR(1000));
                                            
                                    
create table DBSYNC_USER.TABLE_DATA_NAME (S_ID_COL number,
                                            COL_ONE_S DATE,
                                            COL_TWO_S TIMESTAMP(6),
                                            COL_THREE_ABC  TIMESTAMP(6) WITH TIME ZONE,
                                            COL_FOUR_S TIMESTAMP(6) WITH LOCAL TIME ZONE);
                                            
create table DBSYNC_USER.TABLE_RAWLOB_NAME (S_ID_COL number,
                                            ABC_ONE_COL RAW(2000),
                                            ABC_TWO_COL BLOB,
                                            ABC_THREE_S CLOB,
                                            ABC_FOUR_COL NCLOB);
                                            
                                            
create table DBDEST_USER.TAB_NUMBER_TYPE (S_ID_COL number,
                                            S_ONE_COL number,
                                            S_TWO_COL INTEGER,
                                            S_THREE_COL BINARY_DOUBLE,
                                            S_FOUR_ABC BINARY_FLOAT,
                                            S_FIVE_COL FLOAT(126));
                                            
                                    
create table DBDEST_USER.TAB_CHAR_TYPE (S_ID_COL number,
                                            S_ONE_COL VARCHAR2(4000 BYTE),
                                            S_TWO_COL CHAR(200 BYTE),
                                            S_THREE_ABC NVARCHAR2(2000),
                                            S_FOUR_COL NCHAR(1000));
                                            
                                    
create table DBDEST_USER.TABLE_DATA_NAME (S_ID_COL number,
                                            COL_ONE_S DATE,
                                            COL_TWO_S TIMESTAMP(6),
                                            COL_THREE_ABC  TIMESTAMP(6) WITH TIME ZONE,
                                            COL_FOUR_S TIMESTAMP(6) WITH LOCAL TIME ZONE);
                                            
create table DBDEST_USER.TABLE_RAWLOB_NAME (S_ID_COL number,
                                            ABC_ONE_COL RAW(2000),
                                            ABC_TWO_COL BLOB,
                                            ABC_THREE_S CLOB,
                                            ABC_FOUR_COL NCLOB);