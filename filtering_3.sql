.read setup.sql

-- Query (Start coding below)
-- Start by writing an SQL query that selects everything and groups data by location.
SELECT *
FROM doctors
GROUP BY location;

-- We don't want everything to be displayed! Select two columns instead: the location, and a summary column for the average amount of doctors for that location overall.
SELECT location, AVG(count)
FROM doctors
GROUP BY location;

-- Now include a WHERE clause in your query to select only data between (not including) 2012 and 2018.
SELECT location, AVG(count)
FROM doctors WHERE period > 2012 and period < 2018
GROUP BY location;

-- Bonus: Do exactly the same as before, but now including 2012 and 2018 using more simple syntax (Do not use <=/>=)
SELECT location, AVG(count)
FROM doctors WHERE period BETWEEN 2012 and 2018
GROUP BY location;

-- Finally, include a summary column that shows the amount of values for each location.
SELECT location, AVG(count), COUNT(count)
FROM doctors WHERE period BETWEEN 2012 and 2018
GROUP BY location;
