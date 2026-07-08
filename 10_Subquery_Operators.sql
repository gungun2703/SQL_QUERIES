SQL> SET PAGES 200 LINES 200
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > ( SELECT SAL
  4               FROM EMP
  5                WHERE JOB = 'SALESMAN');
WHERE SAL > ( SELECT SAL
              *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL IN ( SELECT SAL
  4                 FROM EMP
  5                  WHERE JOB ='SALESMAN');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
WARD                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  

SQL> SELECT*
  2  FROM EMP
  3  WHERE HIREDATE > (
  4      SELECT MAX(HIREDATE)
  5      FROM EMP
  6      WHERE JOB ='CLERK'
  7  );

no rows selected

SQL> SELECT ENAME , SAL
  2  FROM EMP
  3  WHERE SAL < (
  4  SELECT SAL
  5  ;
SELECT SAL
*
ERROR at line 4:
ORA-00921: unexpected end of SQL command 


SQL> SELECT ENAME , SAL
  2  FROM EMP
  3  WHERE SAL <
  4  (SELECT MIN(SAL)
  5  FROM EMP
  6  WHERE JOB ='MANAGER');

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SMITH             800                                                                                                                                                                                   
ALLEN            1600                                                                                                                                                                                   
WARD             1250                                                                                                                                                                                   
MARTIN           1250                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   
ADAMS            1100                                                                                                                                                                                   
JAMES             950                                                                                                                                                                                   
MILLER           1300                                                                                                                                                                                   

8 rows selected.

SQL> SELECT ENAME , HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE < (
  4  SELECT MIN(HIREDATE)
  5  FROM EMP
  6  WHERE JOB ='MANAGER'
  7  );

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
SMITH      17-DEC-80                                                                                                                                                                                    
ALLEN      20-FEB-81                                                                                                                                                                                    
WARD       22-FEB-81                                                                                                                                                                                    

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > (
  4  SELECT HIREDATE
  5  FROM EMP
  6  WHERE JOB ='MANAGER')
  7  AND SAL > (
  8  SELECT SAL
  9  FROM EMP
 10  WHERE ENAME = 'CLERK');
SELECT HIREDATE
*
ERROR at line 4:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > (
  4  SELECT MAX(HIREDATE)
  5  FROM EMP
  6  WHERE JOB ='MANAGER')
  7  AND SAL > (
  8  SELECT MAX(SAL)
  9  FROM EMP
 10  WHERE JOB ='CLERK');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SCOTT                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  
FORD                                                                                                                                                                                                    

SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB ='CLERK'
  4  AND HIREDATE < (
  5  SELECT MIN(HIREDATE)
  6  FROM EMP
  7  WHERE JOB ='SALESMAN');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO IN
  4  (SELECT DEPTNO
  5  FROM DEPT
  6  WHERE DNAME = 'SALES'
  7  OR DNAME ='ACCOUNTING');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

9 rows selected.

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO IN
  4  (SELECT DEPTNO
  5  FROM DNAME
  6  WHERE DNAME IN (SALES , ACCOUNTING);
WHERE DNAME IN (SALES , ACCOUNTING)
                                  *
ERROR at line 6:
ORA-00907: missing right parenthesis 


SQL> SELECT DEPTNO
  2  FROM EMP
  3  WHERE ENAME = 'SMITH'
  4  AND ENAME ='KING'
  5  AND ENAME ='MILLER';

no rows selected

SQL> SELECT DISTINCT D.DNAME
  2  FROM EMP E
  3  JOIN DEPT D
  4  ON E.DEPTNO = D.DEPTNO
  5  WHERE E.ENAME IN ('SMITH', 'KING', 'MYLER');

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              
RESEARCH                                                                                                                                                                                                

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO IN (
  4  SELECT DEPTNO
  5  FROM DEPT
  6  WHERE LOC= 'NEW YORK'
  7  OR LOC = 'CHICAGO'
  8  );

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                   

9 rows selected.

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > (
  4  SELECT HIREDATE
  5  ;
SELECT HIREDATE
*
ERROR at line 4:
ORA-00921: unexpected end of SQL command 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > (
  4  SELECT MAX(HIREDATE)
  5  FROM EMP
  6  WHERE DEPTNO = 10
  7  );

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
SCOTT                                                                                                                                                                                                   
ADAMS                                                                                                                                                                                                   

SQL> SPOOL OFF
