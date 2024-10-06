# Loading a CSV File into MySQL

This document explains how to load a CSV file into a MySQL table using the `LOAD DATA INFILE` statement.

## Steps to Load the CSV File

- **Specify the file path**: Replace `<path-name>` with the actual path to your CSV file.
- **Define the target table**: Replace `<table-name>` with the name of the table where you want to load the data.
- **Formatting options**:
  - **Field terminated by**: Set the delimiter (in this case, a comma).
  - **Optionally enclosed by**: Set how text fields are enclosed (e.g., double quotes).
  - **Ignore header lines**: Use `IGNORE 1 LINES` if your CSV file contains header rows.

## SQL Command

```sql
LOAD DATA LOCAL INFILE '<path-name>'
INTO TABLE <table-name>
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
IGNORE 1 LINES;
```

![image](https://github.com/user-attachments/assets/4d10a93c-e356-4200-aae9-7fca9c8d9d5f)

# Loading a CSV File into MySQL

If you encounter an error when loading a local CSV file, follow these steps to enable access:

## Enable Local File Loading

Run the following command in your MySQL client:

```sql
SET GLOBAL local_infile = 'ON';
```

You can check if the local_infile is enabled with the following command
```sql
SHOW VARIABLES LIKE 'local_infile';
```
![image](https://github.com/user-attachments/assets/3cc952f5-0d30-4f7d-93fa-69a9b2c618fa)
It should show ON.
If the Error still comes then restart SQL from command as shown below
```sql
mysql --local-infile=1 -u username -p
```
# RETRIEVING THE NUMBER OF RECORDS

## Getting the number of records
```sql
select count(*) from <table-name>;
```
![image](https://github.com/user-attachments/assets/e199f49d-66f8-4690-8253-f62a9f4a2492)

## Getting distinct records
```sql
SELECT DISTINCT <column-name> from <table-name>;
```

## Getting count of distinct records
```sql
SELECT count(DISTINCT <column-name> from <table-name>;
```
![image](https://github.com/user-attachments/assets/5e50f807-8eb6-45f5-8912-2bdd73547893)

# Aggregation Functions in SQL

Aggregation functions are essential in SQL for performing calculations on multiple rows of data and returning a single value. This document explains the commonly used aggregation functions: `SUM`, `AVG`, and `STDDEV`.

## 1. SUM

### SQL Command

```sql
SELECT SUM(<column-name>) AS total_<column-name>
FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/63280731-9353-48eb-ae17-96dcd285173a)
![image](https://github.com/user-attachments/assets/5ccfa601-8f59-436e-99bb-afcda9943d73)

## 2. AVG
### SQL Command

```sql
SELECT AVG(<column-name>) AS average_<column-name>
FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/e42efa84-3946-4577-bfc9-f89231ade880)

## 3. STANDARD DEVIATION

### SQL Command
```sql
SELECT STDDEV(<column-name>) AS stddev_<column-name>
FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/7637ed8e-9664-43d7-bb85-c351273ad0ab)

# Extreme Value Identification

Extreme value identification is crucial for data analysis, as it helps in finding the maximum and minimum values in a dataset. In SQL, the `MAX` and `MIN` functions are used for this purpose.

## 1. MAX

### SQL Command

```sql
SELECT MAX(<column-name>) AS max_<column-name>
FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/a066e563-de9e-49db-b955-fbde2a318a67)

## 2. MIN

### SQL Command
```sql
SELECT MIN(<column-name>) AS min_<column-name>
FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/b358ecaf-9843-426d-8ffb-4c04d97840d3)

# Slicing data in table

## 1. Select all the records whose field values lies in the list [list1, list2, list3]

### SQL Command
```sql
SELECT  * FROM <table-name> WHERE <field-name> IN ("list1", "list2", "list3");
```
![image](https://github.com/user-attachments/assets/c830ddf2-8640-4bbd-83dc-636cd558b11a)

## 2. Select the records not in the list [list1, list2, list3]

### SQL Command
```sql
SELECT * FROM <table-name> WHERE <field-name> NOT IN ("list1", "list2", "list3");
```
![image](https://github.com/user-attachments/assets/19b92f0b-fa71-46e1-8266-63122101dc5d)

If there is single value you can use following command
```sql
SELECT * FROM <table-name> WHERE <field-name> <> "list1";
```
![image](https://github.com/user-attachments/assets/045f1615-db4e-41b7-9521-00eae7ce96e9)

## 3. OR and AND Operator

### SQL Command
```sql
SELECT * FROM <table-name> WHERE <field-name1>=<value1> OR <field-name2>=<value2>;
SELECT * FROM <table-name> WHERE <field-name1>=<value1> AND <field-name2>=<value2>;
```
![image](https://github.com/user-attachments/assets/2d9f3e38-98e5-479e-8e1f-083f90b1b332)

## 4. Select Range of values

### SQL Command
```sql
SELECT * FROM <table-name> WHERE <field-name1> >= <value1> and <field-name1> <= <value2>;
SELECT * FROM <table-name> WHERE <field-name1> BETWEEN <value1> and <value2>;
```
![image](https://github.com/user-attachments/assets/4512f3f6-56bd-4057-b1e6-5d939fb7cc14)

# Using OFFSET in SQL

The `OFFSET` clause is used in SQL to skip a specified number of rows before starting to return rows from the result set. It is often used in conjunction with the `LIMIT` clause to paginate query results.

### SQL Command

```sql
SELECT <column-names>
FROM <table-name>
OFFSET <number-of-rows-to-skip>;
```
![image](https://github.com/user-attachments/assets/9efccf94-592b-43b9-9455-cda032449152)

# Sorting in SQL

Sorting data in SQL is accomplished using the `ORDER BY` clause. This allows you to arrange the results of a query based on one or more columns in either ascending or descending order.

## SQL Syntax

```sql
SELECT <column-names>
FROM <table-name>
ORDER BY <column-name> [ASC|DESC];
```
![image](https://github.com/user-attachments/assets/984ff61e-0d4a-46d1-a263-8a358de673f5)

# Pattern Matching in MySQL

## 1. Select all the records whose text field starts or ends or contains specific substring
Start with specific substring
```sql
SELECT * FROM <table-name> WHERE <field-name> LIKE "<substring>%";
```
![image](https://github.com/user-attachments/assets/356c2fcb-6b80-4e48-a1d8-4ebea14eca1c)

Ends with specific substring
```sql
SELECT * FROM <table-name> WHERE <field-name> LIKE  "%<substring>";
 ```

Contains specific substring
```sql
SELECT * FROM <table-name> WHERE <field-name> LIKE "%<substring>%";
```
![image](https://github.com/user-attachments/assets/5f28a575-1cb5-4b1f-bd2d-a5e9992eb8a5)

## 2. Substring start from particular index like 1 or 2
Here  _ denotes 1 position, so if we want to get all records whose field has 'i' character from 2 position
```sql
SELECT * FROM <table-name> WHERE <field-name> LIKE "_i%";
```
![image](https://github.com/user-attachments/assets/e50d13a1-f26f-4d01-bb46-957a1ef3f3a6)

# GROUP BY in SQL

The `GROUP BY` clause in SQL is used to arrange identical data into groups. It is often used with aggregate functions like `COUNT`, `SUM`, `AVG`, `MAX`, and `MIN` to perform operations on each group of data.

## SQL Command

```sql
SELECT <column-names>, aggregate_function(<column-name>)
FROM <table-name>
WHERE <condition>
GROUP BY <column-name>;
```
![image](https://github.com/user-attachments/assets/e89d03f3-2282-4cc6-81e8-a532936deab8)

# Using HAVING with GROUP BY in SQL

The `HAVING` clause in SQL is used to filter records after aggregation has taken place with the `GROUP BY` clause. It allows you to impose conditions on groups created by the `GROUP BY` clause, similar to how the `WHERE` clause filters individual records.

## SQL Syntax

```sql
SELECT <column-names>, aggregate_function(<column-name>)
FROM <table-name>
WHERE <condition>
GROUP BY <column-name>
HAVING <aggregate_condition>;
```
![image](https://github.com/user-attachments/assets/59778c94-ac4a-408d-acda-8b50d248b87c)

# Exporting a Table to CSV in MySQL

Exporting data from a MySQL table to a CSV (Comma-Separated Values) file is a straightforward process using the `SELECT ... INTO OUTFILE` statement. This method allows you to save the results of your query directly into a CSV file.

## SQL Command

To export a table to a CSV file, use the following syntax:

```sql
SELECT <columns>
FROM <table-name>
INTO OUTFILE '<file-path>'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
```
![image](https://github.com/user-attachments/assets/3a6d8c33-4b58-404a-bbf4-087f9ca36c96)

As you can see in above image, access error is thrown. SQL doesn't allow data to be saved anywhere due to security reasons.
To check where data can be saved use following command
```sql
SHOW VARIABLE LIKE 'secure_file_priv';
```
![image](https://github.com/user-attachments/assets/3803a2a4-46db-4b1a-8ac6-a3eed8e07674)

# Backup and Restore MySQL Database

## Backup a MySQL Database

The `mysqldump` command is used to create a backup of a MySQL database. The backup file is saved as an SQL script that can be used to recreate the database.

### Syntax

```bash
mysqldump -u <username> -p <database-name> > <backup-file.sql>
```
## Backup specific tables

### Syntax
```bash
mysqldump -u root -p world employee > /path/to/backup/employee_backup.sql
```
## Backup all databases
```bash
mysqldump -u root -p --all-databases > /path/to/backup/all_databases_backup.sql
```

## Restore a MySQL database
```bash
mysql -u <username> -p <database-name> < <backup-file.sql>
```

## Restore all database
```bash
mysql -u root -p < /path/to/backup/all_databases_backup.sql
```

