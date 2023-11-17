/*  Assignment 1 */

/* 1. Write a query that retrieves suppliers that work in either Georgia or California. */
SELECT * FROM SUPPLIERS WHERE STATE IN ('Georgia', 'California');

/* 2. Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name. */
SELECT * FROM SUPPLIERS WHERE SUPPLIER_NAME LIKE '%wo%' AND (SUPPLIER_NAME LIKE '%I%' OR SUPPLIER_NAME LIKE '%i%');

/* 3. Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent. */
SELECT * FROM SUPPLIERS WHERE TOTAL_SPENT BETWEEN 37000 and 80000;

/* 4. Write a query that returns the supplier names and the state in which they operate meeting the following conditions:
 - belong in the state Georgia or Alaska
 - the supplier id is 100 or greater than 600
 - the amount spent is less than 100,000 or the amount spent is 220,000
*/
SELECT SUPPLIER_NAME, STATE 
FROM SUPPLIERS 
WHERE   (STATE IN ('Georgia', 'Alaska') ) 
        AND ((SUPPLIER_ID = 100) 
            OR (SUPPLIER_ID > 600)) 
        AND ((TOTAL_SPENT < 100000) 
            OR (TOTAL_SPENT = 220000));

/* 
TRUE or FALSE Question:

5. The keywords such as SELECT and WHERE must always be capital in the SQL Query.

false


TRUE or FALSE Question:

6. The database works on first processing the filtering conditions and then processes the FROM condition.

false

TRUE or FALSE Question:

7. Having just the filter condition shown below in a SQL query will return all of the records from the table. WHERE 1 = 1

true

TRUE or FALSE question:

8. NULL can not be compared using an equal sign.

true

TRUE or FALSE question:

The ORDER BY clause is processed before the FROM clause in a SQL statement and it's used to sort the columns in an ascending or descending fashion.

false
*/