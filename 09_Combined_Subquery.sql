SQL> SET PAGES 200 LINES 200
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

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > ( SELECT SAL
  4                FROM EMP
  5                WHERE ENAME = 'SCOTT')
  6  AND DEPTNO = ( SELECT SAL
  7                 FROM EMP
  8                 WHERE DNAME = 'ACCOUNTING');
               WHERE DNAME = 'ACCOUNTING')
                     *
ERROR at line 8:
ORA-00904: "DNAME": invalid identifier 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL
  4               FROM EMP
  5               WHERE ENAME = 'SCOTT')
  6  AND DEPTNO = ( SELECT SAL
  7   ;
AND DEPTNO = ( SELECT SAL
               *
ERROR at line 6:
ORA-00921: unexpected end of SQL command 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > ( SELECT SAL
  4                FROM EMP
  5                WHERE ENAME = 'SCOTT')
  6  AND DEPTNO = (SELECT DEPTNO
  7                FROM DEPT
  8                WHERE DNAME = 'ACCOUNTING');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
KING                                                                                                                                                                                                    

SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB = 'MANAGER'
  4  AND DEPTNO = ( SELECT DEPTNO
  5                 FROM DEPT
  6                 WHERE LOC = 'CHICAGO');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   

SQL> SELECT ENAME ,SAL
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL
  4               FROM EMP
  5               WHERE ENAME = 'KING')
  6  AND DEPTNO = ( SELECT DEPTNO
  7                 FROM DEPT
  8                 WHERE DEPTNO = 'ACCOUNTING');

no rows selected

SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  AND DEPTNO IN ( SELECT DEPTNO
  5                  FROM DEPT
  6                  WHERE DNAME = 'SALES');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   

SQL> SELECT ENAME , SAL , JOB , HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE < ( SELECT HIREDATE
  4                     FROM EMP
  5                      WHERE ENAME = 'KING')
  6  AND DEPTNO = ( SELECT DEPTNO
  7                 FROM DEPT
  8                 WHERE DNAME ='OPERATIONS');

no rows selected

SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN ( SELECT DEPTNO
  4  FROM DEPT
  5  WHERE DNAME LIKE '%S');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

6 rows selected.

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
ADAMS                                                                                                                                                                                                   
JAMES                                                                                                                                                                                                   

7 rows selected.

SQL> SELECT DNAME , LOC
  2  FROM DEPT
  3  WHERE SAL IN ( SELECT SAL
  4                 FROM EMP
  5                  WHERE SAL = 800);
WHERE SAL IN ( SELECT SAL
      *
ERROR at line 3:
ORA-00904: "SAL": invalid identifier 


SQL> SELECT DNAME , LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN ( SELECT DEPTNO
  4                    FROM EMP
  5                    WHERE SAL = 800 );

DNAME          LOC                                                                                                                                                                                      
-------------- -------------                                                                                                                                                                            
RESEARCH       DALLAS                                                                                                                                                                                   

SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = ( SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL );
WHERE DEPTNO = ( SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL )
                 *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = ( SELECT DEPTNO
  4                     FROM EMP
  5                   WHERE COMM IS NOT NULL);
WHERE DEPTNO = ( SELECT DEPTNO
                 *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN ( SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL );

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
SALES                                                                                                                                                                                                   

SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN ( SELECT DEPTNO WHERE COMM IS NOT NULL AND DEPTNO = 40);
WHERE DEPTNO IN ( SELECT DEPTNO WHERE COMM IS NOT NULL AND DEPTNO = 40)
                                *
ERROR at line 3:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN ( SELECT DEPTNO
  4                    FROM EMP
  5                     WHERE COMM IS NOT NULL
  6                   AND DEPTNO = 40);

no rows selected

SQL> SPOOL OFF
