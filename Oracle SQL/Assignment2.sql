/* Questions for this assignment


1. Considering the data exists in the city table, write a query that will return records similar to what is shown below for those cities that have the COUNTRYCODE of 'cbd' :

"NEW YORK CITY has the population of 8,500,000"

"LOS ANGELES has the population of 632,000"

Note: I'd like you to use functions in the SELECT statement to solve this problem. */
SELECT CONCAT(CONCAT(NAME, 'has the population of '), POPULATION) FROM city WHERE countrycode LIKE '%cbd%';


/* Write a query that would show the first three letters and the last three letters of the DISTRICT capitalized and separated by a dash.

Note: I'd like you to use functions in the SELECT statement to solve this problem. */
SELECT CONCAT(CONCAT(CONCAT(UPPER(SUBSTR(district,1,3)),'-'),SUBSTR(district,4,length(district)-3)), CONCAT('-',UPPER(SUBSTR(district,length(district)-2))));


/* Review the following SQL statement:

SELECT MONTHS_BETWEEN(LAST_DAY('15-JAN-12') + 1, '01-APR-12') FROM DUAL;

Considering the database is configured for the given date format, what will be the result of executing the query? */

2


-- TRUE or FALSE Question:

-- Giving the date arguments in chronological order to the MONTHS_BETWEEN function will result in an error.

FALSE


-- Which of the following is true regarding character functions?

-- A). They always accept characters as parameters and nothing else.

-- B). They always return a character value.

-- C). They are generally used to process text data.

-- D). They generally have the letters CHAR somewhere in the function name.

C


-- Which of the following is true regarding functions in SQL?

-- A). They never return a value.

-- B). They often return a value.

-- C). They always return a value.

-- D). There is no consistent answer to whether they return a value or not.

C


-- Review the SQL Statement:

-- SELECT SUBSTR('2009', 1, 2) || LTRIM('1124', '1') FROM DUAL;

-- What will be the result of executing the SQL Statement?

-- A). 2024

-- B). 221

-- C). 20124

-- D). A syntax error

2024

-- TRUE or FALSE Question:

-- Review the syntax of how the NULLIF function is used:

-- NULLIF( expr1, expr2 )

-- The NULLIF function returns expr1 if expr1 and expr2 are not equal.

true


-- TRUE or FALSE Question:

-- The TO_CHAR function converts data from various data types to character data. It can accept characters, a number or a date as valid arguments.
true