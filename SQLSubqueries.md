# Subqueries in MySQL
```sql
SELECT * FROM Players WHERE Age > (SELECT AVG(Age) FROM Players);
```
Above is an exmple of subquery where average is calculated first and then is > operator operated on the subquery result.

## Type of Subquery
- Non-correlated Subquery - This is an exmple of Correlated Subquery
```sql
SELECT * FROM Players WHERE Age > (SELECT AVG(Age) FROM Players);
```

- 
