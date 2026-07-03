SQL> SELECT*
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                 
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

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

SQL> SELECT DEPTNO , COUNT(*)SELECT DEPTNO, COUNT(*) AS NO_OF_EMP
  2  FROM EMP
  3  WHERE JOB = 'CLERK'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*) >= 3;
SELECT DEPTNO , COUNT(*)SELECT DEPTNO, COUNT(*) AS NO_OF_EMP
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT DEPTNO, COUNT(*) AS NO_OF_EMP
  2  FROM EMP
  3  WHERE JOB = 'CLERK'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*) >= 3;

no rows selected

SQL> SELECT DEPTNO, SUM(SAL) AS TOTAL_SAL
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING COUNT(*) >= 4;

    DEPTNO  TOTAL_SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30       9400                                                                                                                                                                                   
        20      10875                                                                                                                                                                                   

SQL> SELECT JOB, COUNT(*) AS NO_OF_EMP
  2  FROM EMP
  3  WHERE SAL > 1200
  4  GROUP BY JOB
  5  HAVING SUM(SAL) > 3800;

JOB        NO_OF_EMP                                                                                                                                                                                    
--------- ----------                                                                                                                                                                                    
SALESMAN           4                                                                                                                                                                                    
PRESIDENT          1                                                                                                                                                                                    
MANAGER            3                                                                                                                                                                                    
ANALYST            2                                                                                                                                                                                    

SQL> SELECT DEPTNO, COUNT(*) AS EMPLOYEES
  2  FROM EMP
  3  WHERE JOB = 'MANAGER'
  4  GROUP BY DEPTNO
  5  HAVING COUNT(*) = 2;

no rows selected

SQL> SELECT JOB, MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MAX(SAL) > 2600;

JOB         MAX(SAL)                                                                                                                                                                                    
--------- ----------                                                                                                                                                                                    
PRESIDENT       5000                                                                                                                                                                                    
MANAGER         2975                                                                                                                                                                                    
ANALYST         3000                                                                                                                                                                                    

SQL> SELECT SAL
  2  FROM EMP
  3  GROUP BY SAL
  4  HAVING COUNT(*) > 1;

       SAL                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1250                                                                                                                                                                                              
      3000                                                                                                                                                                                              

SQL> SELECT HIREDATE
  2  FROM EMP
  3  GROUP BY HIREDATE
  4  HAVING COUNT(*) > 1;

HIREDATE                                                                                                                                                                                                
---------                                                                                                                                                                                               
03-DEC-81                                                                                                                                                                                               

SQL> SELECT DEPTNO, AVG(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  HAVING AVG(SAL) < 3000;

    DEPTNO   AVG(SAL)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        30 1566.66667                                                                                                                                                                                   
        20       2175                                                                                                                                                                                   
        10 2916.66667                                                                                                                                                                                   

SQL> SELECT DEPTNO
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4     OR ENAME LIKE '%S%'
  5  GROUP BY DEPTNO
  6  HAVING COUNT(*) >= 3;

    DEPTNO                                                                                                                                                                                              
----------                                                                                                                                                                                              
        30                                                                                                                                                                                              
        20                                                                                                                                                                                              

SQL> SELECT JOB, MIN(SAL), MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB
  4  HAVING MIN(SAL) > 1000
  5     AND MAX(SAL) < 5000;

JOB         MIN(SAL)   MAX(SAL)                                                                                                                                                                         
--------- ---------- ----------                                                                                                                                                                         
SALESMAN        1250       1600                                                                                                                                                                         
MANAGER         2450       2975                                                                                                                                                                         
ANALYST         3000       3000                                                                                                                                                                         

SQL> spool off
