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

SQL> SELECT e.ename , m.ename
  2  FROM emp e
  3  JOIN emp m
  4  WHERE e.mgr = m.empno
  5  ;
WHERE e.mgr = m.empno
*
ERROR at line 4:
ORA-00905: missing keyword 


SQL> ed
Wrote file afiedt.buf

  1  SELECT e.ename , m.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5* WHERE e.job ='CLERK';
  6  /
WHERE e.job ='CLERK';
                    *
ERROR at line 5:
ORA-00911: invalid character 


SQL> ED
Wrote file afiedt.buf

  1  SELECT e.ename , m.ename
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5* WHERE e.job ='CLERK';
SQL> /
WHERE e.job ='CLERK';
                    *
ERROR at line 5:
ORA-00911: invalid character 


SQL> SELECT e.ename AS employee_name,
  2         m.ename AS manager_name
  3  FROM emp e
  4  JOIN emp m
  5  ON e.mgr = m.empno
  6  WHERE e.job = 'CLERK';

EMPLOYEE_N MANAGER_NA                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SMITH      FORD                                                                                                                                                                                         
ADAMS      SCOTT                                                                                                                                                                                        
JAMES      BLAKE                                                                                                                                                                                        
MILLER     CLARK                                                                                                                                                                                        

SQL> SELECT e.ename , m.job
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE deptno = 10 or deptno = 20;
WHERE deptno = 10 or deptno = 20
                     *
ERROR at line 5:
ORA-00918: column ambiguously defined 


SQL> ed
Wrote file afiedt.buf

  1  SELECT e.ename , m.job
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5* WHERE e.deptno = 10 or e.deptno = 20
SQL> /

ENAME      JOB                                                                                                                                                                                          
---------- ---------                                                                                                                                                                                    
SMITH      ANALYST                                                                                                                                                                                      
JONES      PRESIDENT                                                                                                                                                                                    
CLARK      PRESIDENT                                                                                                                                                                                    
SCOTT      MANAGER                                                                                                                                                                                      
ADAMS      ANALYST                                                                                                                                                                                      
FORD       MANAGER                                                                                                                                                                                      
MILLER     MANAGER                                                                                                                                                                                      

7 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  SELECT e.ename , m.sal
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE e.sal > 2300
  6* AND m.sal > 2300;
SQL> 
SQL> /
AND m.sal > 2300;
                *
ERROR at line 6:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  SELECT e.ename , m.sal
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE e.sal > 2300
  6* AND m.sal > 2300;
SQL> /
AND m.sal > 2300;
                *
ERROR at line 6:
ORA-00911: invalid character 


SQL> SELECT e.ename, m.sal
  2  FROM emp e
  3  JOIN emp m
  4  ON e.mgr = m.empno
  5  WHERE e.sal > 2300
  6  AND m.sal > 2300;

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
JONES            5000                                                                                                                                                                                   
BLAKE            5000                                                                                                                                                                                   
CLARK            5000                                                                                                                                                                                   
SCOTT            2975                                                                                                                                                                                   
FORD             2975                                                                                                                                                                                   

SQL> SELECT e.ename , m.hiredate
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.HIREATE > '01-JAN-1982';
WHERE E.HIREATE > '01-JAN-1982'
      *
ERROR at line 5:
ORA-00904: "E"."HIREATE": invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  SELECT e.ename , m.hiredate
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5* WHERE E.HIREDATE > '01-JAN-1982'
SQL> /

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
SCOTT      02-APR-81                                                                                                                                                                                    
ADAMS      19-APR-87                                                                                                                                                                                    
MILLER     09-JUN-81                                                                                                                                                                                    

SQL> SELECT E.ENAME , M.ENAME , E.SAL , M.SAL
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.SAL > M.SAL ;

ENAME      ENAME             SAL        SAL                                                                                                                                                             
---------- ---------- ---------- ----------                                                                                                                                                             
SCOTT      JONES            3000       2975                                                                                                                                                             
FORD       JONES            3000       2975                                                                                                                                                             

SQL> SELECT E.ENAME , E.HIREDATE , M.ENAME , M.HIREDATE
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE M.HIREDATE > E.HIREDATE ;

ENAME      HIREDATE  ENAME      HIREDATE                                                                                                                                                                
---------- --------- ---------- ---------                                                                                                                                                               
SMITH      17-DEC-80 FORD       03-DEC-81                                                                                                                                                               
ALLEN      20-FEB-81 BLAKE      01-MAY-81                                                                                                                                                               
WARD       22-FEB-81 BLAKE      01-MAY-81                                                                                                                                                               
JONES      02-APR-81 KING       17-NOV-81                                                                                                                                                               
BLAKE      01-MAY-81 KING       17-NOV-81                                                                                                                                                               
CLARK      09-JUN-81 KING       17-NOV-81                                                                                                                                                               

6 rows selected.

SQL> SELECT E.ENAME , M.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.JOB = M.JOB ;

no rows selected

SQL> SELECT e.ename AS employee_name,
  2         m.ename AS manager_name
  3  FROM emp e
  4  JOIN emp m
  5  ON e.mgr = m.empno
  6  WHERE e.job = m.job;

no rows selected

SQL> SELECT E.ENAME , M.ENAME
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE M.JOB = 'MANAGER' ;

ENAME      ENAME                                                                                                                                                                                        
---------- ----------                                                                                                                                                                                   
ALLEN      BLAKE                                                                                                                                                                                        
WARD       BLAKE                                                                                                                                                                                        
MARTIN     BLAKE                                                                                                                                                                                        
SCOTT      JONES                                                                                                                                                                                        
TURNER     BLAKE                                                                                                                                                                                        
JAMES      BLAKE                                                                                                                                                                                        
FORD       JONES                                                                                                                                                                                        
MILLER     CLARK                                                                                                                                                                                        

8 rows selected.

SQL> SELECT e.ename AS employee_name,
  2         m.ename AS manager_name
  3  FROM emp e
  4  JOIN emp m
  5  ON e.mgr = m.empno
  6  WHERE m.job = 'MANAGER';

EMPLOYEE_N MANAGER_NA                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
ALLEN      BLAKE                                                                                                                                                                                        
WARD       BLAKE                                                                                                                                                                                        
MARTIN     BLAKE                                                                                                                                                                                        
SCOTT      JONES                                                                                                                                                                                        
TURNER     BLAKE                                                                                                                                                                                        
JAMES      BLAKE                                                                                                                                                                                        
FORD       JONES                                                                                                                                                                                        
MILLER     CLARK                                                                                                                                                                                        

8 rows selected.

SQL> SELECT E.ENAME , E.SAL* 12 AS EMPLOYEE_AS , M.ENAME , M.SAL*12 AS MANAGER_AS
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE DEPTNO = 10 OR DEPTNO = 20
  6  AND M.SAL > E.SAL ;
WHERE DEPTNO = 10 OR DEPTNO = 20
                     *
ERROR at line 5:
ORA-00918: column ambiguously defined 


SQL> ED
Wrote file afiedt.buf

  1  SELECT E.ENAME , E.SAL* 12 AS EMPLOYEE_AS , M.ENAME , M.SAL*12 AS MANAGER_AS
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE E.DEPTNO = 10 OR E.DEPTNO = 20
  6* AND M.SAL > E.SAL 
SQL> /

ENAME      EMPLOYEE_AS ENAME      MANAGER_AS                                                                                                                                                            
---------- ----------- ---------- ----------                                                                                                                                                            
SMITH             9600 FORD            36000                                                                                                                                                            
JONES            35700 KING            60000                                                                                                                                                            
CLARK            29400 KING            60000                                                                                                                                                            
ADAMS            13200 SCOTT           36000                                                                                                                                                            
MILLER           15600 CLARK           29400                                                                                                                                                            

SQL> SELECT E.ENAME , M.JOB
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO;

ENAME      JOB                                                                                                                                                                                          
---------- ---------                                                                                                                                                                                    
SMITH      ANALYST                                                                                                                                                                                      
ALLEN      MANAGER                                                                                                                                                                                      
WARD       MANAGER                                                                                                                                                                                      
JONES      PRESIDENT                                                                                                                                                                                    
MARTIN     MANAGER                                                                                                                                                                                      
BLAKE      PRESIDENT                                                                                                                                                                                    
CLARK      PRESIDENT                                                                                                                                                                                    
SCOTT      MANAGER                                                                                                                                                                                      
TURNER     MANAGER                                                                                                                                                                                      
ADAMS      ANALYST                                                                                                                                                                                      
JAMES      MANAGER                                                                                                                                                                                      
FORD       MANAGER                                                                                                                                                                                      
MILLER     MANAGER                                                                                                                                                                                      

13 rows selected.

SQL> SELECT E.ENAME , M.SAL
  2  FROM EMP E
  3  JOIN EMP M
  4  ON E.MGR = M.EMPNO
  5  WHERE M.SAL LIKE '%50';

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
ALLEN            2850                                                                                                                                                                                   
WARD             2850                                                                                                                                                                                   
MARTIN           2850                                                                                                                                                                                   
TURNER           2850                                                                                                                                                                                   
JAMES            2850                                                                                                                                                                                   
MILLER           2450                                                                                                                                                                                   

6 rows selected.

SQL> SPOOL OFF
