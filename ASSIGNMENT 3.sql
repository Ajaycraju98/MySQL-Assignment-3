#create a new table named Managers
CREATE TABLE Managers(
    Manager_Id INT auto_increment  PRIMARY KEY  ,
    First_name varchar(30) NOT NULL ,
	Last_Name varchar(30) NOT NULL,
    DOB date not null ,
    Age int not null check (Age>=25 and Age<=50),
    Last_update date,
    Gender char(1)  ,
    Department varchar(30),Salary int not null);
 
    
    desc Managers;
    
   # 1. Insert 10 rows
   
insert INTO managers (First_name,Last_Name,DOB,Age,Last_update,Gender,Department,Salary)values 
('Ajay','cr','1998-04-02',26,'2024-10-06','M','IT',50000),
('Arun','pp','1998-06-10',27,'2024-10-08','M','sales',45000),
('Radha','krishnan','1997-05-05',27,'2024-09-08','F','HR',35000),
('Radha','ram','1997-10-05',27,'2024-10-08','F','Administration',25000),
('Aaliya','akbar','1998-04-20',26,'2024-10-10','F','IT',55000),
('Ajmal','khan','1993-05-12',31,'2024-09-12','M','Sales',45000),
('Agosh','menon','1993-04-12',31,'2024-10-15','M','Sales',50000),
('Parvathi','menon','1993-12-10',31,'2024-10-15','F','HR',45000),
('Sathyan','raj','1984-10-15',40,'2024-09-08','M','Sales',60000),
('Shyam','kumar','1985-10-15',39,'2024-08-08','M','Sales',50000);


select*from managers;

#2. Write a query that retrieves the name and date of birth of the manager with Manager_Id 1. 

select First_name , DOB from managers where Manager_Id=1;


#3. Write a query to display the annual income of all managers. 
select Manager_Id,First_name,Last_Name,12*Salary as Annuual_income from managers;

#4. Write a query to display records of all managers except ‘Aaliya’.
SELECT * FROM managers WHERE First_name NOT IN  ('Aaliya');


#5. Write a query to display details of managers whose department is IT and earns more than 25000 per month. 
SELECT * FROM managers WHERE Department='IT' AND Salary>25000;

#6. Write a query to display details of managers whose salary is between 10000 and 35000.

SELECT * FROM managers WHERE Salary BETWEEN 10000 AND 35000;
