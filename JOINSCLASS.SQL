SQL> SET PAGES 300 LINES 300
SQL> SELECT*
  2  FROM EMP CROSS JOIN DEPT;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     DEPTNO DNAME          LOC                                                                                                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------- -------------                                                                                                                                                                               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      

56 rows selected.

SQL> SELECT*
  2  FROM EMP, DEPT
  3  ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     DEPTNO DNAME          LOC                                                                                                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------- -------------                                                                                                                                                                               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         30 SALES          CHICAGO                                                                                                                                                                                     
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         30 SALES          CHICAGO                                                                                                                                                                                     
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         40 OPERATIONS     BOSTON                                                                                                                                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         40 OPERATIONS     BOSTON                                                                                                                                                                                      

56 rows selected.

SQL> SELECT *
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO = DEPT.DEPTNO;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     DEPTNO DNAME          LOC                                                                                                                                                                                         
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------- -------------                                                                                                                                                                               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         30 SALES          CHICAGO                                                                                                                                                                                     
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         30 SALES          CHICAGO                                                                                                                                                                                     
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         20 RESEARCH       DALLAS                                                                                                                                                                                      
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         10 ACCOUNTING     NEW YORK                                                                                                                                                                                    

14 rows selected.

SQL> SELECT*
  2  FROM DEPT;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                               
---------- -------------- -------------                                                                                                                                                                                                                                                                     
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                          
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                            
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                           
        40 OPERATIONS     BOSTON                                                                                                                                                                                                                                                                            

SQL> SELECT EMPNAME , DNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO = DEPT.DEPTNO;
SELECT EMPNAME , DNAME
       *
ERROR at line 1:
ORA-00904: "EMPNAME": invalid identifier 


SQL> SELECT EMPNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO = DEPT.DEPTNO;
SELECT EMPNAME
       *
ERROR at line 1:
ORA-00904: "EMPNAME": invalid identifier 


SQL> SELECT ENAME , DNAME
  2  FROM EMP , DEPT
  3  WHERE EMP.DEPTNO =DEPT.DEPTNO AND JOB ='MANAGER' AND LOC ='NEW YORK';

ENAME      DNAME                                                                                                                                                                                                                                                                                            
---------- --------------                                                                                                                                                                                                                                                                                   
CLARK      ACCOUNTING                                                                                                                                                                                                                                                                                       

SQL> SELECT ENAME , DNAME , DEPTNO , LOC
  2  FROM EMP , DEPT
  3  WHERE HIREDATE LIKE '%81' AND DNAME ='RESEARCH' AND LOC ='DALLAS'
  4  ED
  5  ;
ED
*
ERROR at line 4:
ORA-00933: SQL command not properly ended 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , DNAME , DEPTNO , LOC
  2  FROM EMP , DEPT
  3  WHERE EMP.DEPTNO = DEPT .DEPTNO AND  HIREDATE LIKE '%81' AND DNAME ='RESEARCH' AND LOC ='DALLAS'
  4* ED
  5  /
ED
*
ERROR at line 4:
ORA-00933: SQL command not properly ended 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , DNAME , DEPTNO , LOC
  2  FROM EMP , DEPT
  3* WHERE EMP.DEPTNO = DEPT .DEPTNO AND  HIREDATE LIKE '%81' AND DNAME ='RESEARCH' AND LOC ='DALLAS'
  4  /
SELECT ENAME , DNAME , DEPTNO , LOC
                       *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , DNAME , DEPTNO , LOC
  2  FROM EMP , DEPT
  3  WHERE EMP.DEPTNO = DEPT .DEPTNO 
  4  AND  HIREDATE LIKE '%81'
  5   AND DNAME ='RESEARCH' AND
  6*  LOC ='DALLAS'
SQL> /
SELECT ENAME , DNAME , DEPTNO , LOC
                       *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME , DNAME , DEPTNO , LOC
  2  FROM EMP , DEPT
  3  WHERE( EMP.DEPTNO = DEPT .DEPTNO 
  4  AND  HIREDATE LIKE '%81'
  5   AND DNAME ='RESEARCH' AND
  6*  LOC ='DALLAS')
SQL> /
SELECT ENAME , DNAME , DEPTNO , LOC
                       *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME ,  DEPTNO , HIREDATE , DNAME ,  LOC
  2  FROM EMP , DEPT
  3  WHERE( EMP.DEPTNO = DEPT .DEPTNO 
  4  AND  HIREDATE LIKE '%81'
  5   AND DNAME ='RESEARCH' AND
  6*  LOC ='DALLAS')
SQL> /
SELECT ENAME ,  DEPTNO , HIREDATE , DNAME ,  LOC
                *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME ,  DEPTNO ,  DNAME ,  LOC
  2  FROM EMP , DEPT
  3  WHERE EMP.DEPTNO = DEPT.DEPTNO 
  4  AND  HIREDATE LIKE '%81'
  5   AND DNAME ='RESEARCH' AND
  6*  LOC ='DALLAS'
SQL> /
SELECT ENAME ,  DEPTNO ,  DNAME ,  LOC
                *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT ENAME ,  DNAME , EMP.DEPTNO,  LOC
  2  FROM EMP , DEPT
  3  WHERE EMP.DEPTNO = DEPT.DEPTNO 
  4  AND  HIREDATE LIKE '%81'
  5   AND DNAME ='RESEARCH' AND
  6*  LOC ='DALLAS'
SQL> /

ENAME      DNAME              DEPTNO LOC                                                                                                                                                                                                                                                                    
---------- -------------- ---------- -------------                                                                                                                                                                                                                                                          
JONES      RESEARCH               20 DALLAS                                                                                                                                                                                                                                                                 
FORD       RESEARCH               20 DALLAS                                                                                                                                                                                                                                                                 

SQL> SELECT*
  2  FROM DEPT NATURAL JOIN SALGRADE;

    DEPTNO DNAME          LOC                GRADE      LOSAL      HISAL                                                                                                                                                                                                                                    
---------- -------------- ------------- ---------- ---------- ----------                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK               1        700       1200                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK               2       1201       1400                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK               3       1401       2000                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK               4       2001       3000                                                                                                                                                                                                                                    
        10 ACCOUNTING     NEW YORK               5       3001       9999                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS                 1        700       1200                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS                 2       1201       1400                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS                 3       1401       2000                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS                 4       2001       3000                                                                                                                                                                                                                                    
        20 RESEARCH       DALLAS                 5       3001       9999                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                1        700       1200                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                2       1201       1400                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                3       1401       2000                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                4       2001       3000                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                5       3001       9999                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                 1        700       1200                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                 2       1201       1400                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                 3       1401       2000                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                 4       2001       3000                                                                                                                                                                                                                                    
        40 OPERATIONS     BOSTON                 5       3001       9999                                                                                                                                                                                                                                    

20 rows selected.

SQL> SPOOL OFF
