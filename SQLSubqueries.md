# Subqueries in MySQL
- A subquery is a query that is nested inside a larger query
- A subquery is always enclosed inside paranthesis
- Subquery returns results that may consist of
    * A single row with single column
    * A single row with multiple column
    * A multiple row with multiple column
```sql
SELECT * FROM Players WHERE Age > (SELECT AVG(Age) FROM Players);
```
Above is an exmple of subquery where average is calculated first and then is > operator operated on the subquery result.

## Type of Subquery
- Non-correlated Subquery - This is an exmple of Correlated Subquery
```sql
SELECT * FROM Players WHERE Age > (SELECT AVG(Age) FROM Players);
```
  - Multiple-row, Single column subquery
  ### Use of NOT IN Operator
```sql
SELECT name, age, nationality FROM players WHERE age not in (SELECT MAX(age) FROM players GROUP BY nationality);
```
  ### Use of ALL Operator
```sql
SELECT COUNT(*) FROM players WHERE overall <> ALL (SELECT MAX(overall) FROM players GROUP BY nationality);
```
  ### Use of ANY Operator
```sql
  SELECT COUNT(*) FROM players WHERE overall = ANY (SELECT MAX(overall) FROM players GROUP BY nationality);
```
  - Multiple Column Subqueries
```sql
  SELECT name, age, nationality FROM players WHERE nationality REGEXP '^A' AND age < 25;
```

- Correlated Subquery - This is dependent on the containing statement from where it references one or more columns
```sql
 SELECT name, age, nationality FROM players p1 WHERE overall > (SELECT AVG(overall) FROM players p2 WHERE p1.nationality = p2.nationality);
``` 
## Guidelines for using subquery
- Enclosed subquery in paranthesis
- Don't use ORDER BY clause inside subquery
