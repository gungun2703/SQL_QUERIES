gSQL> SET PAGES 200 LINES 200
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

SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE ENAME =(SELECT ENAME FROM EMP WHERE ENAME ='SMITH');
WHERE ENAME =(SELECT ENAME FROM EMP WHERE ENAME ='SMITH')
      *
ERROR at line 3:
ORA-00904: "ENAME": invalid identifier 


SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE ENAME = ( SELECT ENAME FROM EMP WHERE ENAME = 'SMITH');
WHERE ENAME = ( SELECT ENAME FROM EMP WHERE ENAME = 'SMITH')
      *
ERROR at line 3:
ORA-00904: "ENAME": invalid identifier 


SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME ='SMITH');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
RESEARCH                                                                                                                                                                                                

SQL> SELECT DEPTNO , LOC
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'KING');

    DEPTNO LOC                                                                                                                                                                                          
---------- -------------                                                                                                                                                                                
        10 NEW YORK                                                                                                                                                                                     

SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO =
  4  ( SELECT DEPTNO FROM EMP WHERE EMPNO = 7902);

LOC                                                                                                                                                                                                     
-------------                                                                                                                                                                                           
DALLAS                                                                                                                                                                                                  

SQL> SELECT DNAME , LOC
  2  FROM DEPT
  3  WHERE DEPTNO = ( SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%R');
WHERE DEPTNO = ( SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%R')
                 *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT DNAME , LOC
  2  FROM DEPT
  3  WHERE DEPTNO = ( SELECT DEPTNO
  4                   FROM EMP
  5                   WHERE ENAME LIKE '%R');
WHERE DEPTNO = ( SELECT DEPTNO
                 *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT DNAME , LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN ( SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%R');

DNAME          LOC                                                                                                                                                                                      
-------------- -------------                                                                                                                                                                            
ACCOUNTING     NEW YORK                                                                                                                                                                                 
SALES          CHICAGO                                                                                                                                                                                  

SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = ( SELECT DEPTNO FROM EMP WHERE JOB ='PRESIDENT');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              

SQL> SELECT *
  2  FROM DEPT;

    DEPTNO DNAME          LOC                                                                                                                                                                           
---------- -------------- -------------                                                                                                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                                                                                                      
        20 RESEARCH       DALLAS                                                                                                                                                                        
        30 SALES          CHICAGO                                                                                                                                                                       
        40 OPERATIONS     BOSTON                                                                                                                                                                        

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DNAME = ( SELECT DNAME FROM DEPT WHERE DNAME = 'ACCOUNTING');
WHERE DNAME = ( SELECT DNAME FROM DEPT WHERE DNAME = 'ACCOUNTING')
      *
ERROR at line 3:
ORA-00904: "DNAME": invalid identifier 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = ( SELECT DNAME FROM DEPT WHERE DNAME = 'ACCOUNTING');
WHERE DEPTNO = ( SELECT DNAME FROM DEPT WHERE DNAME = 'ACCOUNTING')
                        *
ERROR at line 3:
ORA-01722: invalid number 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = ( SELECT DEPTNO FROM DEPT WHERE DNAME = ' ACCOUNTING ' ) ;

no rows selected

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = ( SELECT DEPTNO
  4                   FROM DEPT
  5                     WHERE JOB = 'CHICAGO');

no rows selected

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO IN ( SELECT DEPTNO FROM DEPT WHERE DNAME ='SALES');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

6 rows selected.

SQL> SELECT EMPNO , ENAME , JOB , MGR , HIREDATE ,SAL , COMM , DEPTNO , SAL*12 AS ANNUAL SALARY
  2  FROM EMP
  3  WHERE DEPTNO IN ( SELECT DEPTNO
  4                    FROM DEPT
  5                     WHERE LOC ='NEW YORK');
SELECT EMPNO , ENAME , JOB , MGR , HIREDATE ,SAL , COMM , DEPTNO , SAL*12 AS ANNUAL SALARY
                                                                                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT EMPNO , ENAME , JOB , MGR , HIREDATE , SAL , COMM , DEPTNO , SAL* 12 AS " ANNUAL SALARY
  2  SELECT EMPNO , ENAME , JOB , MGR , HIREDATE , SAL , COMM , DEPTNO , SAL*12 AS ANNUAL_SALARY
  3  FROM EMP
  4  WHERE DEPTNO IN ( SELECT DEPTNO
  5                    FROM DEPT
  6                    WHERE LOC ='NEW YORK');
ERROR:
ORA-00972: identifier is too long 


SQL> SELECT EMPNO,
  2  ENAME,
  3  JOB,
  4  MGR,
  5  HIREDATE,
  6  SAL,
  7  COMM,
  8  DEPTNO ,
  9  SAL*12 AS " ANNUAL SALARY"
 10  FROM EMP
 11  WHERE DEPTNO IN ( SELECT DEPTNO
 12                    FROM DEPT
 13                    WHERE LOC ='NEW YORK');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  ANNUAL SALARY                                                                                                    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- --------------                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10          29400                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10          60000                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10          15600                                                                                                    

SQL> 
SQL> SE
SP2-0042: unknown command "SE" - rest of line ignored.
SQL> 
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = ( SELECT DEPTNO FROM DEPT WHERE DNAME ='OPERATIONS');

no rows selected

SQL> SPOOL OFF
