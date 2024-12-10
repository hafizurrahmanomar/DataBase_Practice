-- Active: 1733816298470@@127.0.0.1@3306@shop

-- 1.String


SELECT ("Hello World");

SELECT  'Hello world!' as mag;

SELECT CONCAT('Hello ', 'World!') AS Concatenation;

SELECT CONCAT_WS(' ', 'Hello', 'World!') AS Concatenation_With_Separator;


-- Conditional Statements

SELECT 'Hello World!' AS greeting, 'Good Morning' AS message
FROM dual
    WHERE @num1 > @num2;

SELECT 'Hello World!' AS greeting, 'Good Evening' AS message
FROM dual
    WHERE @num1 < @num2;


-- 2.Math

-- SQL Variable
SET @num1 = 12; SET @num2 = 2; SET @num3 =144;

-- Arithmetic Operations

SELECT 
@num1 + @num2 AS Addition,
@num1 - @num2 AS Subtraction,
@num1 * @num2 AS Multiplication,
@num1 / @num2 AS Division,
@num1 % @num2 AS Modulus;

-- power,square root,Round value


 SELECT
 POWER(@num1,2) AS Power,
 SQRT(@num3) AS SquareRoot,
 ROUND(@num1,2) AS Round;


-- 3. Date Time Function


SELECT LOWER("Hafizur Rahman") AS Lower_Case;
SELECT REVERSE("Hafizur Rahman") AS Reverse_String;
SELECT UPPER("Hafizur Rahman") AS Upper_String;
SELECT SIN(30) AS Sin_30;
SELECT COS(30) AS COS_30;
SELECT Now() as CurrentTime;
SELECT DATE_ADD(CURDATE(), INTERVAL 1 DAY) AS Tomorrow;
SELECT DATE_SUB(CURDATE(), INTERVAL 1 DAY) AS Yesterday;
SELECT DATEDIFF('2024-12-10','1986-12-30') as DateOfBirth;
SELECT MINUTE('2024-12-10 13:59:23') as Min;
SELECT SECOND('2024-12-10 13:59:23') as SEC;
SELECT YEAR('2024-12-10 13:59:23') as Yea;

-- 4. Aggregate Function
-- count(),avg(),min(),max(),