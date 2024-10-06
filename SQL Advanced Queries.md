# String Concatenation in MySQL

String concatenation in MySQL allows you to combine two or more strings into a single string. This can be useful in various scenarios, such as formatting output or creating composite keys.

## Using the CONCAT() Function

The primary function for string concatenation in MySQL is `CONCAT()`. This function takes one or more string arguments and returns a single concatenated string.

### Syntax

```sql
CONCAT(string1, string2, ...)
```
```sql
SELECT CONCAT(Name, " | ", Nationality) FROM players;
```
![image](https://github.com/user-attachments/assets/6e593a41-85b3-4cbe-87b3-8a0bf76d0075)

# String Case Conversion in MySQL

In MySQL, you can use the `UCASE()` and `LCASE()` functions to convert string values to upper case and lower case, respectively. These functions are particularly useful when you need to standardize text for comparison or display purposes.

## UCASE() Function

The `UCASE()` function converts all characters in a string or field to upper case.

### Syntax

```sql
SELECT UCASE(<field-name>) FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/54d385ba-29c8-43eb-982e-374b6cdb2178)

## LCASE() Function

The `LCASE()` function converts all characters in a string or field to lower case.

### Syntax

```sql
SELECT LCASE(<field-name>) FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/74fe6991-176c-4296-bfcb-f946ce64f2ae)

# String Trimming in MySQL

In MySQL, you can use the `TRIM()`, `LTRIM()`, and `RTRIM()` functions to remove unwanted spaces (or specific characters) from strings. These functions are useful when cleaning up data, such as removing leading or trailing spaces from user input.

## TRIM() Function

The `TRIM()` function removes both leading and trailing spaces (or other specified characters) from a string.

### Syntax

```sql
SELECT TRIM([remstr FROM] <field-name>) FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/1a13f6b1-8e2c-4230-bda8-35fef255a717)

# Extracting Substrings

## LEFT (<field-name>,<count>)
Extract substring from 0 to <count> from <field-name>

### Syntax
```sql
SELECT LEFT(<field-name>, <count>) from <table-name>;
```
![image](https://github.com/user-attachments/assets/18dafb6d-7638-42eb-b1e0-bf73f4e7f30a)

## RIGHT (<field-name>, <count>)
Extract substring from <count> from last to last character

### Syntax
```sql
SELECT RIGHT(<field-name>,<count>) FROM <field-name>;
```
![image](https://github.com/user-attachments/assets/7b56c088-fe2d-4fea-9b03-ad3ee92e82b1)

## SUBSTRING (<FIELD-NAME>, <VAL1>, <VAL2>)
Extract substring from <val1> to <val2> both included

### Syntax
```sql
SELECT SUBSTRING(<field-name>, <val1>, <val2>) FROM <table-name>;
```
![image](https://github.com/user-attachments/assets/0eff9699-8ec4-4aa4-9fda-770ad8b91c13)

# Regular Expressions (REGEX) in MySQL

MySQL provides support for pattern matching using regular expressions through the `REGEXP` operator and the `RLIKE` alias. Regular expressions allow you to match, search, and manipulate strings based on specific patterns. Below are examples demonstrating how to use regex in different scenarios.

## Basic Syntax

```sql
SELECT <field-name>
FROM <table-name>
WHERE <field-name> REGEXP '<pattern>';
```

![image](https://github.com/user-attachments/assets/d920d407-7a73-4d53-8949-a6477173c910)

# DatTime in MySQL

## Current DateTime 

### Syntax
```sql
SELECT now();
```

## Current Date

### Syntax
```sql
SELECT curdate();
```

## Current Time

### Syntax
```sql
SELECT curtime();
```

## UNIX TIME

### Syntax
```sql
SELECT unix_timetamp();
```
![image](https://github.com/user-attachments/assets/e965281a-e1cb-4069-81dd-c32876774ba3)

# Extracting datetime

## date(), year(), month(), day()
To extact a particular date, time , day or month we can use `DATE`, `YEAR`, `MONTH` and `DAY`

### Syntax
```sql
SELECT DATE(<date-field>), YEAR(<date0-field), MONTH(<date0-field), DAY(<date0-field) from <table-name>;
```
![image](https://github.com/user-attachments/assets/51019513-0e0e-4884-b593-5e4e72aeb4ed)

# Taking ratio of two fields

## Syntax
```sql
SELECT <field1>/<field2> from <table-name>;
```
![image](https://github.com/user-attachments/assets/d398f096-c9db-468f-8ff9-5718eeca14e9)

# Conditional Statements

## Syntax
```sql
SELECT <field-name>,
CASE
WHEN <condition1> THEN <operation1>,
WHEN <condition> THEN <operation2>,
ELSE <operation3>
END AS <new-field-name>
FROM <table-name;
```
![image](https://github.com/user-attachments/assets/f16b49a3-1073-4a6a-8dfb-e29f95d4e48e)
