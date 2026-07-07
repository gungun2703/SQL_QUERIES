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

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > (SELECT ENAME
  4                FROM EMP
  5                 WHERE ENAME = 'ADAMS');
WHERE SAL > (SELECT ENAME
                    *
ERROR at line 3:
ORA-01722: invalid number 


SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME ='ADAMS');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
SCOTT                                                                                                                                                                                                   
KING                                                                                                                                                                                                    
TURNER                                                                                                                                                                                                  
FORD                                                                                                                                                                                                    
MILLER                                                                                                                                                                                                  

11 rows selected.

SQL> SELECT ENAME , SAL
  2  FROM EMP
  3  WHERE SAL < (SELECT SAL FROM EMP WHERE ENAME ='KING');

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SMITH             800                                                                                                                                                                                   
ALLEN            1600                                                                                                                                                                                   
WARD             1250                                                                                                                                                                                   
JONES            2975                                                                                                                                                                                   
MARTIN           1250                                                                                                                                                                                   
BLAKE            2850                                                                                                                                                                                   
CLARK            2450                                                                                                                                                                                   
SCOTT            3000                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   
ADAMS            1100                                                                                                                                                                                   
JAMES             950                                                                                                                                                                                   
FORD             3000                                                                                                                                                                                   
MILLER           1300                                                                                                                                                                                   

13 rows selected.

SQL> SELECT ENAME , DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO =(SELECT DEPTNO
  4  FROM EMP
  5  WHERE ENAME ='JONES');

ENAME          DEPTNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SMITH              20                                                                                                                                                                                   
JONES              20                                                                                                                                                                                   
SCOTT              20                                                                                                                                                                                   
ADAMS              20                                                                                                                                                                                   
FORD               20                                                                                                                                                                                   

SQL> SELECT ENAME , JOB
  2  FROM EMP
  3  WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME ='JONES');

ENAME      JOB                                                                                                                                                                                          
---------- ---------                                                                                                                                                                                    
JONES      MANAGER                                                                                                                                                                                      
BLAKE      MANAGER                                                                                                                                                                                      
CLARK      MANAGER                                                                                                                                                                                      

SQL> SELECT EMPNO , ENAME , SAL*12
  2  FROM EMP
  3  WHERE SAL*12 > = ( SELECT SAL*12 FROM EMP WHERE ENAME ='WARD');

     EMPNO ENAME          SAL*12                                                                                                                                                                        
---------- ---------- ----------                                                                                                                                                                        
      7499 ALLEN           19200                                                                                                                                                                        
      7521 WARD            15000                                                                                                                                                                        
      7566 JONES           35700                                                                                                                                                                        
      7654 MARTIN          15000                                                                                                                                                                        
      7698 BLAKE           34200                                                                                                                                                                        
      7782 CLARK           29400                                                                                                                                                                        
      7788 SCOTT           36000                                                                                                                                                                        
      7839 KING            60000                                                                                                                                                                        
      7844 TURNER          18000                                                                                                                                                                        
      7902 FORD            36000                                                                                                                                                                        
      7934 MILLER          15600                                                                                                                                                                        

11 rows selected.

SQL> SELECT ENAME , HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE < (SELECT HIREDATE FROM EMP WHERE ENAME ='SCOTT');

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
SMITH      17-DEC-80                                                                                                                                                                                    
ALLEN      20-FEB-81                                                                                                                                                                                    
WARD       22-FEB-81                                                                                                                                                                                    
JONES      02-APR-81                                                                                                                                                                                    
MARTIN     28-SEP-81                                                                                                                                                                                    
BLAKE      01-MAY-81                                                                                                                                                                                    
CLARK      09-JUN-81                                                                                                                                                                                    
KING       17-NOV-81                                                                                                                                                                                    
TURNER     08-SEP-81                                                                                                                                                                                    
JAMES      03-DEC-81                                                                                                                                                                                    
FORD       03-DEC-81                                                                                                                                                                                    
MILLER     23-JAN-82                                                                                                                                                                                    

12 rows selected.

SQL> SELECT ENAME , HIREDATE FROM EMP WHERE HIREDATE > (SELECT HIREDATE FROM EMP WHERE JOB='PRESIDENT');

ENAME      HIREDATE                                                                                                                                                                                     
---------- ---------                                                                                                                                                                                    
SCOTT      19-APR-87                                                                                                                                                                                    
ADAMS      23-MAY-87                                                                                                                                                                                    
JAMES      03-DEC-81                                                                                                                                                                                    
FORD       03-DEC-81                                                                                                                                                                                    
MILLER     23-JAN-82                                                                                                                                                                                    

SQL> SELECT ENAME ,SAL FROM EMP WHERE SAL < (SELECT SAL FROM EMP WHERE EMPNO =7839);

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SMITH             800                                                                                                                                                                                   
ALLEN            1600                                                                                                                                                                                   
WARD             1250                                                                                                                                                                                   
JONES            2975                                                                                                                                                                                   
MARTIN           1250                                                                                                                                                                                   
BLAKE            2850                                                                                                                                                                                   
CLARK            2450                                                                                                                                                                                   
SCOTT            3000                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   
ADAMS            1100                                                                                                                                                                                   
JAMES             950                                                                                                                                                                                   
FORD             3000                                                                                                                                                                                   
MILLER           1300                                                                                                                                                                                   

13 rows selected.

SQL> SELECT*
  2  FROM EMP
  3  WHERE HIREDATE <(SELECT HIREDATE FROM EMP WHERE ENAME ='MILLER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                                                                                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                                                                                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                                                                                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                                                                                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                                                                                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                   

11 rows selected.

SQL> SELECT ENAME , EMPNO
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'ALLEN');

ENAME           EMPNO                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
JONES            7566                                                                                                                                                                                   
BLAKE            7698                                                                                                                                                                                   
CLARK            7782                                                                                                                                                                                   
SCOTT            7788                                                                                                                                                                                   
KING             7839                                                                                                                                                                                   
FORD             7902                                                                                                                                                                                   

6 rows selected.

SQL> SELECT ENAME ,SAL
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'MILLER')
  4  AND
  5  SAL < (SELECT SAL FROM EMP WHERE ENAME = 'ALLEN');

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO = 20
  4  AND JOB =(SELECT JOB FROM EMP WHERE ENAME ='SMITH');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                                                                                                   
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20                                                                                                                   

SQL> SELECT*
  2  FROM EMP
  3  WHEREJOB='MANAGER'
  4  ;
WHEREJOB='MANAGER'
        *
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB = 'MANAGER'
  4  AND DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME ='TURNER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                                                                                                   

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE > '31-DEC-1980'
  4  AND HIREDATE < (SELECT HIREDATE FROM EMP WHERE ENAME ='KING');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   
WARD                                                                                                                                                                                                    
JONES                                                                                                                                                                                                   
MARTIN                                                                                                                                                                                                  
BLAKE                                                                                                                                                                                                   
CLARK                                                                                                                                                                                                   
TURNER                                                                                                                                                                                                  

7 rows selected.

SQL> SELECT ENAME , SAL , SAL*12
  2  FROM EMP
  3  WHERE SAL> 3500
  4  AND SAL < (SELECT SAL FROM EMP WHERE ENAME ='BLAKE');

no rows selected

SQL> SELECT*
  2  FROM EMP
  3  WHERE SAL> (SELECT SAL FROM EMP WHERE ENAME ='SCOTT')
  4  AND SAL < (SELECT SAL FROM EMP WHERE ENAME ='KING');

no rows selected

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'A%'
  4  AND DEPTNO = (SELECT DEPTNO
  5                 FROM EMP
  6                 WHERE ENAME = 'BLAKE');

ENAME                                                                                                                                                                                                   
----------                                                                                                                                                                                              
ALLEN                                                                                                                                                                                                   

SQL> SELECT ENAME , COMM
  2  FROM EMP
  3  WHERE COMM IS NOT NULL
  4  AND JOB =( SELECT JOB
  5             FROM EMP
  6              WHERE ENAME ='SMITH');

no rows selected

SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB = 'CLERK'
  4  AND DEPTNO =(SELECT DEPTNO
  5                FROM EMP
  6                  WHERE ENAME ='TURNER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                                                                                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                                                                                                   

SQL> SELECT ENAME , SAL , JOB
  2  FROM EMP
  3  WHERE SAL*12 > (SELECT SAL*12 FROM EMP WHERE ENAME ='SMITH')
  4  AND SAL*12 < (SELECT SAL*12 FROM EMP WHERE ENAME= 'KING');

ENAME             SAL JOB                                                                                                                                                                               
---------- ---------- ---------                                                                                                                                                                         
ALLEN            1600 SALESMAN                                                                                                                                                                          
WARD             1250 SALESMAN                                                                                                                                                                          
JONES            2975 MANAGER                                                                                                                                                                           
MARTIN           1250 SALESMAN                                                                                                                                                                          
BLAKE            2850 MANAGER                                                                                                                                                                           
CLARK            2450 MANAGER                                                                                                                                                                           
SCOTT            3000 ANALYST                                                                                                                                                                           
TURNER           1500 SALESMAN                                                                                                                                                                          
ADAMS            1100 CLERK                                                                                                                                                                             
JAMES             950 CLERK                                                                                                                                                                             
FORD             3000 ANALYST                                                                                                                                                                           
MILLER           1300 CLERK                                                                                                                                                                             

12 rows selected.

SQL> SPOOL OFF
