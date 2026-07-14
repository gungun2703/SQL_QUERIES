SQL> SET PAGES 200 LINES 200
SQL> SELECT e.ename , m.ename
  2  FROM EMP e
  3  JOIN emp m
  4  ON e.mgr = m.empno;

ENAME      ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
SMITH      FORD                                                                                                                                                                                         
ALLEN      BLAKE                                                                                                                                                                                        
WARD       BLAKE                                                                                                                                                                                        
JONES      KING                                                                                                                                                                                         
MARTIN     BLAKE                                                                                                                                                                                        
BLAKE      KING                                                                                                                                                                                         
CLARK      KING                                                                                                                                                                                         
SCOTT      JONES                                                                                                                                                                                        
TURNER     BLAKE                                                                                                                                                                                        
ADAMS      SCOTT                                                                                                                                                                                        
JAMES      BLAKE                                                                                                                                                                                        
FORD       JONES                                                                                                                                                                                        
MILLER     CLARK                                                                                                                                                                                        

13 rows selected.

SQL> SELECT E.ENAME AS EMPLOYEE
  2  , M.ENAME AS MANAGER
  3  FROM EMP E
  4  JOIN EMP M
  5  ON E.MGR = M.EMPNO;

EMPLOYEE   MANAGER                                                                                                                                                                                      
---------- ----------                                                                                                                                                                                   
SMITH      FORD                                                                                                                                                                                         
ALLEN      BLAKE                                                                                                                                                                                        
WARD       BLAKE                                                                                                                                                                                        
JONES      KING                                                                                                                                                                                         
MARTIN     BLAKE                                                                                                                                                                                        
BLAKE      KING                                                                                                                                                                                         
CLARK      KING                                                                                                                                                                                         
SCOTT      JONES                                                                                                                                                                                        
TURNER     BLAKE                                                                                                                                                                                        
ADAMS      SCOTT                                                                                                                                                                                        
JAMES      BLAKE                                                                                                                                                                                        
FORD       JONES                                                                                                                                                                                        
MILLER     CLARK                                                                                                                                                                                        

13 rows selected.

SQL> SELECT*
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                             
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             

13 rows selected.

SQL> SELECT *
  2  FROM EMP E , EMP M
  3  ;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                             
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7369 SMITH      CLERK           7902 17-DEC-80        800                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7900 JAMES      CLERK           7698 03-DEC-81        950                    30                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                             

196 rows selected.

SQL> SELECT*
  2  FROM EMP E , EMP M
  3  ON E.MGR = M.EMPNO;
ON E.MGR = M.EMPNO
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> SELECT*
  2  FROM EMP E , EMP M
  3  WHERE E.MGR = M.EMPNO;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                             
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------                             
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                             
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       7839 KING       PRESIDENT            17-NOV-81       5000                    10                             
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20                             
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                             
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       7566 JONES      MANAGER         7839 02-APR-81       2975                    20                             
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                             

13 rows selected.

SQL> SELECT E.ENAME , M.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR =M.EMPNO
  5  WHERE E.ENAME = 'SCOTT' ;

ENAME      ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
SCOTT      JONES                                                                                                                                                                                        

SQL> SELECT E.ENAME , M.NAME
  2  ED
  3  /
ED
 *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> ED
Wrote file afiedt.buf

  1  SELECT E.ENAME , M.ENAME
  2  FROM EMP E , EMP M
  3  WHERE E.MGR = M.EMPNO
  4  AND E.ENAME = 'SCOTT' ;
  5* ED
SQL> /
AND E.ENAME = 'SCOTT' ;
                      *
ERROR at line 4:
ORA-00911: invalid character 


SQL> SELECT E.ENAME , M.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.ENAME = 'SCOTT' ;

ENAME      ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
SCOTT      JONES                                                                                                                                                                                        

SQL> SELECT E.ENAME , M.ENAME , MM.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  JOIN EMP MM
  6  ON E.MGR = MM.EMPNO
  7  WHERE E.ENAME = 'SMITH' ;

ENAME      ENAME      ENAME                                                                                                                                                                             
---------- ---------- ----------                                                                                                                                                                        
SMITH      FORD       FORD                                                                                                                                                                              

SQL> ED
Wrote file afiedt.buf

  1  SELECT E.ENAME , M.ENAME , MM.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  JOIN EMP MM
  6  ON E.MGR = MM.EMPNO
  7* WHERE m.ENAME = 'SMITH' 
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  SELECT E.ENAME , M.ENAME , MM.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  JOIN EMP MM
  6  ON M.MGR = MM.EMPNO
  7* WHERE m.ENAME = 'SMITH' 
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  SELECT E.ENAME , M.ENAME , MM.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  JOIN EMP MM
  6  ON M.MGR = MM.EMPNO
  7* WHERE E.ENAME = 'SMITH' 
SQL> /

ENAME      ENAME      ENAME                                                                                                                                                                             
---------- ---------- ----------                                                                                                                                                                        
SMITH      FORD       JONES                                                                                                                                                                             

SQL> SELECT E.ENAME , M.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.SAL > M.SAL ;

ENAME      ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
SCOTT      JONES                                                                                                                                                                                        
FORD       JONES                                                                                                                                                                                        

SQL> spool off
