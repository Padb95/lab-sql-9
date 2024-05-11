-- Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE RENTAL_MAY AS
SELECT *
FROM SAKILA.RENTAL
WHERE EXTRACT(MONTH FROM RENTAL_DATE) = 5;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO RENTAL_MAY
SELECT *
FROM SAKILA.RENTAL
WHERE EXTRACT(MONTH FROM rental_date) = 5;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TEMPORARY TABLE RENTAL_JUNE AS
SELECT * 
FROM SAKILA.RENTAL
WHERE EXTRACT(MONTH FROM RENTAL_DATE) = 6;

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO RENTAL_JUNE
SELECT *
FROM SAKILA.RENTAL
WHERE EXTRACT(MONTH FROM RENTAL_DATE) = 6;

-- Check the number of rentals for each customer for May.
SELECT CUSTOMER_ID, COUNT(*) AS MAY_COUNT
FROM SAKILA.RENTAL
GROUP BY 1;

-- Check the number of rentals for each customer for June.
SELECT CUSTOMER_ID, COUNT(*) AS JUNE_COUNT
FROM SAKILA.RENTAL
GROUP BY 1;
