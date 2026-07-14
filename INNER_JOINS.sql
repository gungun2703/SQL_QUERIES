SQL> SET PAGES 200 LINES 200
SQL> SELECT e.ename , d.loc
  2  FROM emp e
  3  JOIN dept d
  4  WHERE e.deptno = d.deptno;
WHERE e.deptno = d.deptno
*
ERROR at line 4:
ORA-00905: missing keyword 


SQL> SELECT e.ename, d.loc
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno;

ENAME      LOC                                                                                                                                                                                          
---------- -------------                                                                                                                                                                                
SMITH      DALLAS                                                                                                                                                                                       
ALLEN      CHICAGO                                                                                                                                                                                      
WARD       CHICAGO                                                                                                                                                                                      
JONES      DALLAS                                                                                                                                                                                       
MARTIN     CHICAGO                                                                                                                                                                                      
BLAKE      CHICAGO                                                                                                                                                                                      
CLARK      NEW YORK                                                                                                                                                                                     
SCOTT      DALLAS                                                                                                                                                                                       
KING       NEW YORK                                                                                                                                                                                     
TURNER     CHICAGO                                                                                                                                                                                      
ADAMS      DALLAS                                                                                                                                                                                       
JAMES      CHICAGO                                                                                                                                                                                      
FORD       DALLAS                                                                                                                                                                                       
MILLER     NEW YORK                                                                                                                                                                                     

14 rows selected.

SQL> SELECT d.dname , e.sal
  2  FROM dept
  3  JOIN emp
  4  ED
  5  ;

*
ERROR at line 5:
ORA-00905: missing keyword 


SQL> ED
Wrote file afiedt.buf

  1  SELECT d.dname , e.sal
  2  FROM dept d
  3  JOIN emp e 
  4  ON e.deptno = d.deptno
  5* WHERE dname = 'ACCOUNTING' ;
  6  /
WHERE dname = 'ACCOUNTING' ;
                           *
ERROR at line 5:
ORA-00911: invalid character 


SQL> SELECT e.ename, e.sal
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE d.dname = 'ACCOUNTING';

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
CLARK            2450                                                                                                                                                                                   
KING             5000                                                                                                                                                                                   
MILLER           1300                                                                                                                                                                                   

SQL> SELECT d.name , e.sal*12 AS annual_salary
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE e.sal > 2340;
SELECT d.name , e.sal*12 AS annual_salary
       *
ERROR at line 1:
ORA-00904: "D"."NAME": invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  SELECT d.dname , e.sal*12 AS annual_salary
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5* WHERE e.sal > 2340
SQL> /

DNAME          ANNUAL_SALARY                                                                                                                                                                            
-------------- -------------                                                                                                                                                                            
RESEARCH               35700                                                                                                                                                                            
SALES                  34200                                                                                                                                                                            
ACCOUNTING             29400                                                                                                                                                                            
RESEARCH               36000                                                                                                                                                                            
ACCOUNTING             60000                                                                                                                                                                            
RESEARCH               36000                                                                                                                                                                            

6 rows selected.

SQL> SELECT e.ename , d.dname
  2  FROM emp e
  3  JOIN DEPT d
  4  ON e.deptno = d.deptno
  5  WHERE d.dname LIKE '%A%' ;

ENAME      DNAME                                                                                                                                                                                        
---------- --------------                                                                                                                                                                               
SMITH      RESEARCH                                                                                                                                                                                     
ALLEN      SALES                                                                                                                                                                                        
WARD       SALES                                                                                                                                                                                        
JONES      RESEARCH                                                                                                                                                                                     
MARTIN     SALES                                                                                                                                                                                        
BLAKE      SALES                                                                                                                                                                                        
CLARK      ACCOUNTING                                                                                                                                                                                   
SCOTT      RESEARCH                                                                                                                                                                                     
KING       ACCOUNTING                                                                                                                                                                                   
TURNER     SALES                                                                                                                                                                                        
ADAMS      RESEARCH                                                                                                                                                                                     
JAMES      SALES                                                                                                                                                                                        
FORD       RESEARCH                                                                                                                                                                                     
MILLER     ACCOUNTING                                                                                                                                                                                   

14 rows selected.

SQL> SELECT e.ename , d.dname
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE e.job = 'SALESMAN';

ENAME      DNAME                                                                                                                                                                                        
---------- --------------                                                                                                                                                                               
ALLEN      SALES                                                                                                                                                                                        
WARD       SALES                                                                                                                                                                                        
MARTIN     SALES                                                                                                                                                                                        
TURNER     SALES                                                                                                                                                                                        

SQL> SELECT d.dname , e.sal
  2  FROM emp
  3  JOIN dept d
  4  ON e.deptno = d.deptnp
  5  WHERE e.job LIKE 'S%';
ON e.deptno = d.deptnp
              *
ERROR at line 4:
ORA-00904: "D"."DEPTNP": invalid identifier 


SQL> ED
Wrote file afiedt.buf

  1  SELECT d.dname , e.job
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5* WHERE e.job LIKE 'S%'
SQL> /

DNAME          JOB                                                                                                                                                                                      
-------------- ---------                                                                                                                                                                                
SALES          SALESMAN                                                                                                                                                                                 
SALES          SALESMAN                                                                                                                                                                                 
SALES          SALESMAN                                                                                                                                                                                 
SALES          SALESMAN                                                                                                                                                                                 

SQL> SELECT d.dname, e.mgr
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE e.mgr = 7839;

DNAME                 MGR                                                                                                                                                                               
-------------- ----------                                                                                                                                                                               
RESEARCH             7839                                                                                                                                                                               
SALES                7839                                                                                                                                                                               
ACCOUNTING           7839                                                                                                                                                                               

SQL> SELECT d.dname , e.hiredate
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE e.hiredate > '31-DEC-1983'
  6  AND d.dname = 'ACCOUNTING' OR d.dname ='RESEARCH' ;

DNAME          HIREDATE                                                                                                                                                                                 
-------------- ---------                                                                                                                                                                                
RESEARCH       17-DEC-80                                                                                                                                                                                
RESEARCH       02-APR-81                                                                                                                                                                                
RESEARCH       19-APR-87                                                                                                                                                                                
RESEARCH       23-MAY-87                                                                                                                                                                                
RESEARCH       03-DEC-81                                                                                                                                                                                

SQL> SELECT e.ename , d.dname
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE COMM is not NULL
  6  AND d.deptno = 10 OR d.deptno = 30;

ENAME      DNAME                                                                                                                                                                                        
---------- --------------                                                                                                                                                                               
ALLEN      SALES                                                                                                                                                                                        
WARD       SALES                                                                                                                                                                                        
MARTIN     SALES                                                                                                                                                                                        
BLAKE      SALES                                                                                                                                                                                        
TURNER     SALES                                                                                                                                                                                        
JAMES      SALES                                                                                                                                                                                        

6 rows selected.

SQL> SELECT d.dname , e.ename
  2  FROM emp e
  3  JOIN dept d
  4  ON e.deptno = d.deptno
  5  WHERE empno in (7839 , 7902)
  6  AND loc = 'NEW YORK' ;

DNAME          ENAME                                                                                                                                                                                    
-------------- ----------                                                                                                                                                                               
ACCOUNTING     KING                                                                                                                                                                                     

SQL> SPOOL OFF
