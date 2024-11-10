# JOINS in MYSQL
Join statements are used to join tables

First run the following commands in your MySQL CLI to import tables
```sql
CREATE DATABASE IF NOT EXISTS <your-database-name>;
USE <your-database-name>;
SOURCE <path-to-movie_ticket_project.sql>
```

## INNER JOIN
Join table column based on the matching data in tha the specified columns.

Run the Command given in inner_join_syntax.sql file

## LEFT JOIN
In Inner Join of the matched column data is not matching then the data is rejected.
In Left Join if there is no corresponding matching field in the other table the data from the 
left table is kept and the remaining columns of the table are filled with NULL.



