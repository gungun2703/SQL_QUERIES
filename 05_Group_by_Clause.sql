SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB NOT IN PRESIDENT
  4  GROUP BY DEPARTMENT;
GROUP BY DEPARTMENT
         *
ERROR at line 4:
ORA-00904: "DEPARTMENT": invalid identifier 


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB NOT IN PRESIDENT
  4  GROUP BY DEPTNO;
WHERE JOB NOT IN PRESIDENT
                 *
ERROR at line 3:
ORA-00904: "PRESIDENT": invalid identifier 


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB NOT LIKE '%PRESIDENT%'
  4  GROUP BY DEPTNO;

  COUNT(*)                                                                      
----------                                                                      
         6                                                                      
         5                                                                      
         2                                                                      

SQL> SELECT SUM(SAL)
  2  FROM EMP
  3  GROUP BY JOB;

  SUM(SAL)                                                                      
----------                                                                      
      4150                                                                      
      5600                                                                      
      5000                                                                      
      8275                                                                      
      6000                                                                      

SQL> SELECT JOB , SUM(SAL)
  2  FROM EMP
  3  GROUP BY JOB;

JOB         SUM(SAL)                                                            
--------- ----------                                                            
CLERK           4150                                                            
SALESMAN        5600                                                            
PRESIDENT       5000                                                            
MANAGER         8275                                                            
ANALYST         6000                                                            

SQL> SELECT DEPTNO , COUNT(*)
  2  FROM EMP
  3  WHERE JOB ='MANAGER';
SELECT DEPTNO , COUNT(*)
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB='MANAGER'
  4  GROUP BY DEPTNO;

  COUNT(*)                                                                      
----------                                                                      
         1                                                                      
         1                                                                      
         1                                                                      

SQL> SELECT AVG(SAL)
  2  FROM EMP
  3  WHERE DEPTNO != 20
  4  GROUP BY DEPTNO;

  AVG(SAL)                                                                      
----------                                                                      
1566.66667                                                                      
2916.66667                                                                      

SQL> SELECT JOB , COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  GROUP BY JOB;

JOB         COUNT(*)                                                            
--------- ----------                                                            
SALESMAN           3                                                            
CLERK              2                                                            
MANAGER            2                                                            

SQL> SELECT COUNT(*) , AVG(SAL)
  2  FROM EMP
  3  WHERE SAL>2000
  4  GROUP BY DEPTNO;

  COUNT(*)   AVG(SAL)                                                           
---------- ----------                                                           
         1       2850                                                           
         3 2991.66667                                                           
         2       3725                                                           

SQL> SELECT SUM(SAL) , COUNT(*)
  2  FROM EMP
  3  WHERE JOB='SALESMAN'
  4  GROUP BY DEPTN0;
GROUP BY DEPTN0
         *
ERROR at line 4:
ORA-00904: "DEPTN0": invalid identifier 


SQL> SELECT  DEPTNO , SUM(SAL) , COUNT(*)
  2  FROM EMP
  3  WHERE JOB = 'SALESMAN'
  4  GROUP BY DEPTNO;

    DEPTNO   SUM(SAL)   COUNT(*)                                                
---------- ---------- ----------                                                
        30       5600          4                                                

SQL> SELECT COUNT(*) , MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB;

  COUNT(*)   MAX(SAL)                                                           
---------- ----------                                                           
         4       1300                                                           
         4       1600                                                           
         1       5000                                                           
         3       2975                                                           
         2       3000                                                           

SQL> SELECT JOB , COUNT(*) , MAX(SAL)
  2  FROM EMP
  3  GROUP BY JOB;

JOB         COUNT(*)   MAX(SAL)                                                 
--------- ---------- ----------                                                 
CLERK              4       1300                                                 
SALESMAN           4       1600                                                 
PRESIDENT          1       5000                                                 
MANAGER            3       2975                                                 
ANALYST            2       3000                                                 

SQL> SELECT DEPTNO , MAX(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO;

    DEPTNO   MAX(SAL)                                                           
---------- ----------                                                           
        30       2850                                                           
        20       3000                                                           
        10       5000                                                           

SQL> SELECT SAL , COUNT(*)
  2  FROM EMP;
SELECT SAL , COUNT(*)
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT SEL , COUNT(*)
  2  ;

*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT SAL , COUNT(*)
  2  FROM EMP
  3  GROUP BY SAL;

       SAL   COUNT(*)                                                           
---------- ----------                                                           
      2450          1                                                           
      5000          1                                                           
      1300          1                                                           
      1250          2                                                           
      2850          1                                                           
      2975          1                                                           
      1100          1                                                           
      3000          2                                                           
       800          1                                                           
      1600          1                                                           
      1500          1                                                           

       SAL   COUNT(*)                                                           
---------- ----------                                                           
       950          1                                                           

12 rows selected.

SQL> SPOOL OFF
