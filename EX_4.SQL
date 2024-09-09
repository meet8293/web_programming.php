/*1). The following statement executes successfully :*/
    /*SELECT Ename, Job, Salary as Sal  
    FROM Employees              
    True/False*/

  ANS:-  EXECUTE SUCCESSFULLY.
         TRUE 


/*2). The following statement executes successfully : */ 
 
   /* SELECT *  FROM SALGRADES              
    True/Fals*/

   ANS:- ALL DATA OF SALGRADE ARE RETRIVED
         TRUE


/*3). There are four coding errors in this statement. Identify errors. 
 
    SELECT Empno, Ename  
    Sal x 12 as ANNUAL SALARY  
    FROM Employees/*      



 /*4). Select all data from Departments table.*/ 

    SELECT * FROM DEPARTMENTS
    /

/*5). Create a query to display the Emp name, Job, hire date and employee no for each
    employee with employee no appearing first.*/
   
    SELECT EMPNO , ENAME , JOB , HIREDATE
    FROM EMPLOYEES
    /

/*6). Create a query to display unique jobs from Employees table*/
    
    SELECT DISTINCT JOB AS JOBS FROM EMPLOYEES
    /

/*7).  Write a query to display Employee name, Job and Annual Salary of all employees
    and give the column heading employee name, Job Role and Annual Salary respectively. */

    SELECT ENAME AS "EMPLOYEES NAME", JOB AS "JOB ROLE",SALARY*12 AS "ANNUAL SALARY"
    FROM EMPLOYEES
    / 

/* 8). Run Same query as query 5 and give column heading to column respectively Emp#,
     Employee, Job, Joining Date. */

    SELECT EMPNO AS "EMP#", ENAME AS "EMPLOYEES" , JOB ,HIREDATE AS "JOINING DATE" 
    FROM EMPLOYEES
    /

/*9). Display the Employee name concatenated with job, salary and annual salary and
    Name the Column Employee and Title.
    Example: Parag working as a CLERK and earns 800 monthly and earns 9600 annually */

    SELECT  ENAME||' WORKING AS A '||JOB||' AND EARNS '||SALARY||' MONTHLY AND EARNS '||SALARY*12||' ANNUALY ' 
    FROM EMPLOYEES
    /

/*10). Write a query which display empno, ename, job, birthdate, sal and sal + comm. 
    If comm is null then replace it with 0. */

    SELECT EMPNO, ENAME , JOB , BIRTHDATE , SALARY ,NVL(SALARY+COMM,0)
    FROM EMPLOYEES
    /

/*11) Modify the query no 10 and give the heading emp#, employee name, designation,
      date of birth, salary and net salary respectively. */

    SELECT EMPNO AS "EMP#", ENAME AS "EMPLOYRR NAME" , JOB AS "DESIGNATION" ,
    BIRTHDATE AS "DATE OF BIRTH", SALARY AS "SALARY",(SALARY+NVL(COMM,0))*12 AS "NET SALARY"
    FROM EMPLOYEES
    /

/*12). Write a query to display all data from employees table. Separate each column by a
     comma. Name the Column The_Output. */

    SELECT ENAME||','||ENAME||','||JOB||','||MGR||','||BIRTHDATE||',
    '||HIREDATE||','||SALARY||','||COMM||','||DEPTNO||','
    FROM EMPLOYEES
    /    







