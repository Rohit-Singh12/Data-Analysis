# Constraint in MySQL
Constraints in MySQL is used to apply various kinds of check on the columns
before adding them to the table. 

There are several Constraints in SQL
- Domain Constraint: Add type constraint to the column
- Default Constraint: Ensures that default value is added to the column if no value is provided
- Not Null Constraint: Ensures that column value is NOT NULL
- Unique Contraint: Ensures that all the values in the column are unique. This can be applied as TABLE LEVEL Constraint
- Check Constraint: Ensures that the values in the column follows defined rules. This can also be applies as TABLE LEVEL Constraint
- Key Constraint: It is either a single column or Group of column that uniquely identifies records in a table

```sql
CREATE DATABASE IF NOT EXISTS analyticsvidhya;

USE analyticsvidhya;

CREATE TABLE IF NOT EXISTS employee(
    ID int NOT NULL PRIMARY KEY, 
    FName varchar(255), 
    Salary int DEFAULT 0, 
    BONUS int);

-- show constraints
DESC employee;

-- Adding records
INSERT INTO employee VALUES(
    1,
    'John', 
    50000, 
    10000
);

INSERT INTO employee(Id, FName, Bonus) VALUES(
    2,
    'Jane',
    5000
);

-- View Table (It should have default value for Salary for ID - 2)
SELECT * FROM employee;

-- Adding NOT NULL check to FName
ALTER TABLE employee MODIFY FName varchar(255) NOT NULL;

-- Now check columns
DESC employee;

-- Now if fname is null record won't be added
INSERT INTO employee VALUES(3, null, 3000, 40000);

-- Adding default value to Bonus
ALTER TABLE employee MODIFY Bonus int DEFAULT 0;

-- Insert without Bonus
INSERT INTO employee(Id, FName, Salary) VALUES(4, 'Rahul', 70000);

-- View table
SELECT * FROM employee;


```
## Adding Unique Constraint
![image](https://github.com/user-attachments/assets/4ffaff2d-951b-4a7c-b50a-14900d77549e)
## Applying Unique Constraint on Multiple Columns
![image](https://github.com/user-attachments/assets/336478e2-4c91-4f11-9cb0-f966d24f5887)
![image](https://github.com/user-attachments/assets/eabec37d-1fd8-4765-9818-7d70835497d5)
## Drop Unique Contraint
![image](https://github.com/user-attachments/assets/2d2fcbf5-4604-4ec1-9fac-801056b8cbec)

## Check Constraint Syntax
![image](https://github.com/user-attachments/assets/ddc5a046-1245-4cb1-9e86-eb0c5faefa7d)
## Applying CHECK Contraint as Table Level
![image](https://github.com/user-attachments/assets/a3436811-97c4-4a5b-90a4-8a659e6539bb)
![image](https://github.com/user-attachments/assets/d7cb03dd-2ba6-4845-81b4-67c656818db0)
## Drop Constraint
![image](https://github.com/user-attachments/assets/0bfa2073-49ba-44c7-8d8c-0b38fd07ea01)

# Key Contraints
- Supers Keys uniquely identifies records in the table. They can contain unnecessary columns
- Candidate Keys are subsets of Super Keys that itself can uniquely identify record in the table
- Primary Key is the Candidate key chosen by the databse designer to uniquely identify records in the table.
- All the other Candidate keys are secondary keys
- Composite keys consists of multiple attributes to uniquely identify records in the table
```sql
CREATE TABLE <table-name>(col1, col2, primary key(coln));
```
## Dropping Primary Key
```sql
ALTER TABLE <table-name> DROP PRIMARY KEY;
```

## Adding Priamry
```sql
ALTER TABLE <table-name> ADD PRIMARY(col1, col2, ..., coln);
```
