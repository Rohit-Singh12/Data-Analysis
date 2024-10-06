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
