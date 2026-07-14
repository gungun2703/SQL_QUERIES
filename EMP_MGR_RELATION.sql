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

SQL> SELECT m.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE e.ename = 'SMITH';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
FORD                                                                                                                                                                                                    

SQL> SELECT mm.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  JOIN emp mm
  6  ON m.mgr = mm.empno
  7  WHERE e.ename = 'ADAMS';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JONES                                                                                                                                                                                                   

SQL> SELECT d.dname
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  JOIN dept d
  6  ON m.deptno = d.deptno
  7  WHERE e.ename = 'JONES';

DNAME                                                                                                                                                                                                   
--------------                                                                                                                                                                                          
ACCOUNTING                                                                                                                                                                                              

SQL> SELECT m.sal
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE e.ename = 'MILLER';

       SAL                                                                                                                                                                                              
----------                                                                                                                                                                                              
      2450                                                                                                                                                                                              

SQL> SELECT d.loc
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  JOIN emp mm
  6  ON m.mgr = mm.empno
  7  JOIN dept d
  8  ON mm.deptno = d.deptno
  9  WHERE e.ename = 'SMITH';

LOC                                                                                                                                                                                                     
-------------                                                                                                                                                                                           
DALLAS                                                                                                                                                                                                  

SQL> SELECT e.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE m.ename = 'BLAKE';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
MARTIN                                                                                                                                                                                                  
TURNER                                                                                                                                                                                                  
JAMES                                                                                                                                                                                                   

SQL> SELECT COUNT(*)
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE m.ename = 'KING';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         3                                                                                                                                                                                              

SQL> SELECT e.*
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE m.ename = 'JONES';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

SQL> SELECT e.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  JOIN emp b
  6  ON m.empno = b.mgr
  7  WHERE b.ename = 'BLAKE';

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
JONES                                                                                                                                                                                                   
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   

SQL> SELECT COUNT(*)
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  JOIN emp f
  6  ON m.empno = f.mgr
  7  WHERE f.ename = 'FORD';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         2                                                                                                                                                                                              

SQL> spool off
