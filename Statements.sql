SQL> SET PAGES 200 LINES 200
SQL> SELECT*
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

14 rows selected.

SQL> SELECT*
  2  FROM DEPT
  3  ;

    DEPTNO DNAME          LOC                                                                                                                                                                           
---------- -------------- -------------                                                                                                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                                                                                                      
        20 RESEARCH       DALLAS                                                                                                                                                                        
        30 SALES          CHICAGO                                                                                                                                                                       
        40 OPERATIONS     BOSTON                                                                                                                                                                        

SQL> SELECT*
  2  FROM TAB;

TNAME                          TABTYPE  CLUSTERID                                                                                                                                                       
------------------------------ ------- ----------                                                                                                                                                       
DEPT                           TABLE                                                                                                                                                                    
EMP                            TABLE                                                                                                                                                                    
BONUS                          TABLE                                                                                                                                                                    
SALGRADE                       TABLE                                                                                                                                                                    
OFFICE                         TABLE                                                                                                                                                                    

SQL> cl scr
SQL> CREATE TABLE STUDENT
  2  (
  3  SID NUMBER(4) CHECK(SID>0) CHECK(LENGTH(SID) = 4),
  4  SNAME VARCHAR(20) NOT NULL,
  5  DOB DATE,
  6  PHONE_NO NUMBER(10) CHECK(LENGTH(PHONE_NO)=10) CHECK(PHONE_NO>0),,
  7  ;
PHONE_NO NUMBER(10) CHECK(LENGTH(PHONE_NO)=10) CHECK(PHONE_NO>0),,
                                                                 *
ERROR at line 6:
ORA-00904: : invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE STUDENT
  2  (
  3  SID NUMBER(4) CHECK(SID>0) CHECK(LENGTH(SID) = 4) PRIMARY KEY,
  4  SNAME VARCHAR(20) NOT NULL,
  5  DOB DATE,
  6  PHONE_NO NUMBER(10) CHECK(LENGTH(PHONE_NO)=10) CHECK(PHONE_NO>0)
  7* )
  8  /

Table created.

SQL> CREATE TABLE TRAINER
  2  (
  3  TID NUMBER(2) , CHECK(TID)>0 CHECK(LENGTH(TID)=2) PRIMARY KEY,
  4  TNAME VARCHAR(30) NOT NULL,
  5  COURSE VARCHAR(20)
  6  );
TID NUMBER(2) , CHECK(TID)>0 CHECK(LENGTH(TID)=2) PRIMARY KEY,
                         *
ERROR at line 3:
ORA-00920: invalid relational operator 


SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE TRAINER
  2  (
  3  TID NUMBER(2) , CHECK(TID>0) CHECK(LENGTH(TID)=2) PRIMARY KEY,
  4  TNAME VARCHAR(30) NOT NULL,
  5  COURSE VARCHAR(20)
  6* )
SQL> /
TID NUMBER(2) , CHECK(TID>0) CHECK(LENGTH(TID)=2) PRIMARY KEY,
                             *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE TRAINER
  2  (
  3  TID NUMBER(2)  CHECK(TID>0) CHECK(LENGTH(TID)=2) PRIMARY KEY,
  4  TNAME VARCHAR(30) NOT NULL,
  5  COURSE VARCHAR(20)
  6* )
SQL> /

Table created.

SQL> RENAME TABLE STUDENT TO CHILD;
RENAME TABLE STUDENT TO CHILD
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> RENAME TABLE STUDENT TO STUD;
RENAME TABLE STUDENT TO STUD
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> RENAME STUDENT TO STUD;

Table renamed.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                             NOT NULL VARCHAR2(20)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)

SQL> ALTER TABLE STUD
  2  ADD EMAIL VARCHAR(20) UNIQUE;

Table altered.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                             NOT NULL VARCHAR2(20)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)
 EMAIL                                                                                                                      VARCHAR2(20)

SQL> ALTER TABLE STUD
  2  RENAME COLUMN EMAIL TO MAIL_ID;

Table altered.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                             NOT NULL VARCHAR2(20)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)
 MAIL_ID                                                                                                                    VARCHAR2(20)

SQL> ALTER TABLE STUD
  2  DROP COLUMN MAIL_ID;

Table altered.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                             NOT NULL VARCHAR2(20)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)

SQL> ALTER TABLE STUD
  2  MODIFY SNAME VARCHAR(30);

Table altered.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                             NOT NULL VARCHAR2(30)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)

SQL> ALTER TABLE STUD
  2  MODIFY NOT NULL TO NULL;
MODIFY NOT NULL TO NULL
       *
ERROR at line 2:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE STUD
  2  MODIFY NOT NULL NULL;
MODIFY NOT NULL NULL
       *
ERROR at line 2:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE STUD
  2  MODIFY SNAME NOT NULL VARCHAR(30);
MODIFY SNAME NOT NULL VARCHAR(30)
                      *
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option 


SQL> ALTER TABLE STUD
  2  MODIFY SNAME VARCHAR(30) NULL;

Table altered.

SQL> DESC STUD;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 SID                                                                                                               NOT NULL NUMBER(4)
 SNAME                                                                                                                      VARCHAR2(30)
 DOB                                                                                                                        DATE
 PHONE_NO                                                                                                                   NUMBER(10)

SQL> ALTER TABLE STUD
  2  ADD CONSTRAINT UK_PHONE-NO UNIQUE(PHONE
  3  _NO);
ADD CONSTRAINT UK_PHONE-NO UNIQUE(PHONE
                       *
ERROR at line 2:
ORA-00904: : invalid identifier 


SQL> ALTER TABLE STUD
  2  ADD CONSTRAINT UK_PHONE_NO UNIQUE(PHONE_NO)
  3  ;

Table altered.

SQL> SET PAGES 500 LINES 500
SQL> SELECT*
  2  FROM USER_CONSTRAINTS;

OWNER                          CONSTRAINT_NAME                C TABLE_NAME                     SEARCH_CONDITION                                                                 R_OWNER                        R_CONSTRAINT_NAME              DELETE_RU STATUS   DEFERRABLE     DEFERRED  VALIDATED     GENERATED      BAD RELY LAST_CHAN INDEX_OWNER                    INDEX_NAME                     INVALID VIEW_RELATED                                                                                        
------------------------------ ------------------------------ - ------------------------------ -------------------------------------------------------------------------------- ------------------------------ ------------------------------ --------- -------- -------------- --------- ------------- -------------- --- ---- --------- ------------------------------ ------------------------------ ------- --------------                                                                                      
SCOTT                          SYS_C005420                    C OFFICE                         "EMPLOYEE_NAME" IS NOT NULL                                                                                                                              ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          20-JUN-26                                                                                                                                                                           
SCOTT                          SYS_C005421                    C OFFICE                         "JOB_ROLE" IS NOT NULL                                                                                                                                   ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          20-JUN-26                                                                                                                                                                           
SCOTT                          SYS_C005422                    C OFFICE                         "SALARY" IS NOT NULL                                                                                                                                     ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          20-JUN-26                                                                                                                                                                           
SCOTT                          SYS_C005495                    C STUD                           SID>0                                                                                                                                                    ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005496                    C STUD                           LENGTH(SID) = 4                                                                                                                                          ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005497                    C STUD                           LENGTH(PHONE_NO)=10                                                                                                                                      ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005498                    C STUD                           PHONE_NO>0                                                                                                                                               ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005500                    C TRAINER                        "TNAME" IS NOT NULL                                                                                                                                      ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005501                    C TRAINER                        TID>0                                                                                                                                                    ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          SYS_C005502                    C TRAINER                        LENGTH(TID)=2                                                                                                                                            ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26                                                                                                                                                                           
SCOTT                          FK_DEPTNO                      R EMP                                                                                                             SCOTT                          PK_DEPT                        NO ACTION ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     USER NAME               30-AUG-05                                                                                                                                                                           
SCOTT                          PK_DEPT                        P DEPT                                                                                                                                                                                    ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     USER NAME               30-AUG-05 SCOTT                          PK_DEPT                                                                                                                                    
SCOTT                          PK_EMP                         P EMP                                                                                                                                                                                     ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     USER NAME               30-AUG-05 SCOTT                          PK_EMP                                                                                                                                     
SCOTT                          SYS_C005423                    P OFFICE                                                                                                                                                                                  ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          20-JUN-26 SCOTT                          SYS_C005423                                                                                                                                
SCOTT                          SYS_C005499                    P STUD                                                                                                                                                                                    ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26 SCOTT                          SYS_C005499                                                                                                                                
SCOTT                          UK_PHONE_NO                    U STUD                                                                                                                                                                                    ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     USER NAME               11-JUL-26 SCOTT                          UK_PHONE_NO                                                                                                                                
SCOTT                          SYS_C005503                    P TRAINER                                                                                                                                                                                 ENABLED  NOT DEFERRABLE IMMEDIATE VALIDATED     GENERATED NAME          11-JUL-26 SCOTT                          SYS_C005503                                                                                                                                

17 rows selected.

SQL> ALTER TABLE STUD
  2  DROP CONSTRAINT UK_PHONE_NO;

Table altered.

SQL> ALTER TABLE TRAINER
  2  ADD SID NUMBER(4)
  3  
SQL> ;
  1  ALTER TABLE TRAINER
  2* ADD SID NUMBER(4)
SQL> /

Table altered.

SQL> ALTER TABLE TRAINER
  2  ADD SID NUMBER(4);
ADD SID NUMBER(4)
    *
ERROR at line 2:
ORA-01430: column being added already exists in table 


SQL> ALTER TABLE TRAINER
  2  ADD CONSTRAINT FK_SID FOREIGN KEY(SID)
  3  REFERENCES STUD(SID);

Table altered.

SQL> CREATE TABLE PHONE
  2  (
  3  PID NUMBER(4) PRIMARY KEY,
  4  SID NUMBER(4) ,
  5  CONSTRAINT FK_SID_PHONE FOREIGN KEY(SID) REFERENCES STUD(SID)
  6  ,
  7  CONSTRAINT PK_PID PRIMARY KEY(PID)
  8  );
CONSTRAINT PK_PID PRIMARY KEY(PID)
                  *
ERROR at line 7:
ORA-02260: table can have only one primary key 


SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE PHONE
  2  (
  3  PID NUMBER(4) ,
  4  SID NUMBER(4) ,
  5  CONSTRAINT FK_SID_PHONE FOREIGN KEY(SID) REFERENCES STUD(SID),
  6  CONSTRAINT PK_PID PRIMARY KEY(PID)
  7* )
  8  /

Table created.

SQL> CREATE TABLE LAPTOP
  2  (
  3  PID NUMBER(4)
  4  ,
  5  SID NUMBER(4),
  6  FOREIGN KEY(SID) REFERENCES STUD(SID)
  7  );

Table created.

SQL> 
SQL> SELECT*
  2  FROM TAB;

TNAME                          TABTYPE  CLUSTERID                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
------------------------------ ------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
DEPT                           TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
EMP                            TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
BONUS                          TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
SALGRADE                       TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
OFFICE                         TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
PHONE                          TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
TRAINER                        TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
STUD                           TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
LAPTOP                         TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

9 rows selected.

SQL> DROP TABLE LAPTOP PURGE ;

Table dropped.

SQL> DROP TABLE PHONE;

Table dropped.

SQL> SELECT*
  2  FROM TAB;

TNAME                          TABTYPE  CLUSTERID                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
------------------------------ ------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
DEPT                           TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
EMP                            TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
BONUS                          TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
SALGRADE                       TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
OFFICE                         TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
TRAINER                        TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
STUD                           TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
BIN$Qqq65PPKTmOt4sjmHVuRnQ==$0 TABLE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

8 rows selected.

SQL> PURGE;
PURGE
    *
ERROR at line 1:
ORA-38302: invalid PURGE option 


SQL> FLASHBACK TABLE "BIN$Qqq65PPKTmOt4sjmHVuRnQ==$0" TO BEFORE DROP;

Flashback complete.

SQL> SELECT*
  2  FROM PHONE;

no rows selected

SQL> DESC STUD;
 Name                                                                                                                                                                                                                                                                                                  Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 SID                                                                                                                                                                                                                                                                                                   NOT NULL NUMBER(4)
 SNAME                                                                                                                                                                                                                                                                                                          VARCHAR2(30)
 DOB                                                                                                                                                                                                                                                                                                            DATE
 PHONE_NO                                                                                                                                                                                                                                                                                                       NUMBER(10)

SQL> INSERT INTO STUD VALUES ( 1001 , 'ANNU' , '27-MAR-2007' , 9887654345 );

1 row created.

SQL> SELECT *
  2  FROM STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1001 ANNU                           27-MAR-07 9887654345                                                                                                                                                                                                                                                                                                                                                                                                                                                      

SQL> INSERT INTO STUD( SID , SNAME ) VALUES ( 1002 , 'VIMMI');

1 row created.

SQL> SELECT*
  2  FROM STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1001 ANNU                           27-MAR-07 9887654345                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

SQL> UPDATE STUD
  2  SET SNAME = ANNU , SNAME = ANWI
  3  WHERE SID = 1001;
SET SNAME = ANNU , SNAME = ANWI
                   *
ERROR at line 2:
ORA-00957: duplicate column name 


SQL> UPDATE STUD
  2  SET NAME ='ANWI'
  3  WHERE SID = 1001;
SET NAME ='ANWI'
    *
ERROR at line 2:
ORA-00904: "NAME": invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  UPDATE STUD
  2  SET SNAME ='ANWI'
  3* WHERE SID = 1001
SQL> /

1 row updated.

SQL> SELECT*
  2  FROM STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1001 ANWI                           27-MAR-07 9887654345                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

SQL> UPDATE STUD
  2  SET DOB ='5-MAY-2009'
  3  WHERE SID = 1002;

1 row updated.

SQL> SELECT*
  2  FROM STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1001 ANWI                           27-MAR-07 9887654345                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> DELETE FROM STUD
  2  WHERE SID = 1001;

1 row deleted.

SQL> SELECT*
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                                                                                                                                                                                                                                                                                                                               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                                                                                                                                                                                                                                                                                                                               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                                                                                                                                                                                                                                                                                                                               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                                                                                                                                                                                                                                                                                                                               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                                                                                                                                                                                                                                                                                                                               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                                                                                                                                                                                                                                                                                                                               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                                                                                                                                                                                                                                                                                                                               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                                                                                                                                                                                                                                                                                                                               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                                                                                                                                                                                                                                                                                                                               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                                                                                                                                                                                                                                                                                                                               

14 rows selected.

SQL> SELECR*
SP2-0042: unknown command "SELECR*" - rest of line ignored.
SQL> SELECT*
  2  FROM STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> ------
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> ;';'
SP2-0042: unknown command ";';'" - rest of line ignored.
SQL> ;;
SP2-0042: unknown command ";" - rest of line ignored.
SQL> ;
  1  SELECT*
  2* FROM STUD
SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> 
SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> /

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> GRANT SELECT
  2  ON STUD
  3  TO HR;

Grant succeeded.

SQL> REVOKE SELECT;
REVOKE SELECT
       *
ERROR at line 1:
ORA-00990: missing or invalid privilege 


SQL> REVOKE SELECT
  2  ON STUD
  3  TO HR;
TO HR
*
ERROR at line 3:
ORA-00905: missing keyword 


SQL> CONN HR
Connected.
SQL> SHOW USER
USER is "HR"
SQL> 
SQL> CONN SCOTT
Connected.
SQL> SHOW DATABASES;
SP2-0158: unknown SHOW option "DATABASES"
SQL> SHOW DATABASES
SP2-0158: unknown SHOW option "DATABASES"
SQL> ZYXWVUTSRQPONMJKIHGFEDCBA;
SP2-0734: unknown command beginning "ZYXWVUTSRQ..." - rest of line ignored.
SQL> SELECT*
  2  FROM SCOTT
  3  .
SQL> STUD;
SP2-0042: unknown command "STUD" - rest of line ignored.
SQL> SELECT *
  2  FROM SCOTT.STUD;

       SID SNAME                          DOB         PHONE_NO                                                                                                                                                                                                                                                                                                                                                                                                                                                      
---------- ------------------------------ --------- ----------                                                                                                                                                                                                                                                                                                                                                                                                                                                      
      1002 VIMMI                          05-MAY-09                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

SQL> REVOKE SELECT
  2  ON STUD
  3  FROM HR;

Revoke succeeded.

SQL> SPOOL OFF
