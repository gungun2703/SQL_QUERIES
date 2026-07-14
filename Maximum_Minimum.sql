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
  2  FROM SALGRADE;

     GRADE      LOSAL      HISAL                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
         1        700       1200                                                                                                                                                                        
         2       1201       1400                                                                                                                                                                        
         3       1401       2000                                                                                                                                                                        
         4       2001       3000                                                                                                                                                                        
         5       3001       9999                                                                                                                                                                        

SQL> SELECT*
  2  FROM DEPT;

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
PHONE                          TABLE                                                                                                                                                                    
TRAINER                        TABLE                                                                                                                                                                    
STUD                           TABLE                                                                                                                                                                    

8 rows selected.

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL = ( SELECT MAX(SAL) FROM EMP);

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
KING                                                                                                                                                                                                    

SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME
  2  FROM EMP
  3* WHERE SAL = ( SELECT MIN(SAL) FROM EMP)
SQL> /

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SMITH                                                                                                                                                                                                   

SQL> SELECT ENAME , HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE = ( SELECT MIN(HIREDATE) FROM EMP);

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
SMITH      17-DEC-80                                                                                                                                                                                    

SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , HIREDATE
  2  FROM EMP
  3* WHERE HIREDATE = ( SELECT MAX(HIREDATE) FROM EMP)
SQL> /

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
ADAMS      23-MAY-87                                                                                                                                                                                    

SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , COMM
  2  FROM EMP
  3* WHERE COMM = ( SELECT MAX(COMM) FROM EMP)
SQL> /

ENAME            COMM                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
MARTIN           1400                                                                                                                                                                                   

SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , SAL , COMM
  2  FROM EMP
  3* WHERE COMM = ( SELECT MAX(COMM) FROM EMP)
SQL> /

ENAME             SAL       COMM                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
MARTIN           1250       1400                                                                                                                                                                        

SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME ,  COMM
  2  FROM EMP
  3* WHERE COMM = ( SELECT MIN(COMM) FROM EMP)
SQL> /

ENAME            COMM                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
TURNER              0                                                                                                                                                                                   

SQL> SELECT*
  2  FROM EMP
  3  WHERE EMPNO = ( SELECT MAX(EMPNO) FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL = ( SELECT MIN(SAL*12) FROM EMP);

no rows selected

SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL * 12 = (
  4      SELECT MIN(SAL * 12)
  5      FROM EMP
  6  );

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

SQL> SELECT ENAME , SAL*12 AS " ANNUAL SALARY "
  2  FROM EMP
  3  WHERE SAL > ( SELECT SAL FROM EMP WHERE JOB = 'SALESMAN');
WHERE SAL > ( SELECT SAL FROM EMP WHERE JOB = 'SALESMAN')
              *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT ENAME,
  2         SAL * 12 AS ANNUAL_SALARY
  3  FROM EMP
  4  WHERE SAL * 12 > ALL (
  5      SELECT SAL * 12
  6      FROM EMP
  7      WHERE JOB = 'SALESMAN'
  8  );

ENAME      ANNUAL_SALARY                                                                                                                                                                                
---------- -------------                                                                                                                                                                                
JONES              35700                                                                                                                                                                                
BLAKE              34200                                                                                                                                                                                
CLARK              29400                                                                                                                                                                                
SCOTT              36000                                                                                                                                                                                
KING               60000                                                                                                                                                                                
FORD               36000                                                                                                                                                                                

6 rows selected.

SQL> SPOOL OFF
