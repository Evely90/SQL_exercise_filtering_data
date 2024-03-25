-- Setup
.read setup.sql

-- Query (Start coding below)

-- To be able to perform proper data manipulation, you must have a clean dataset. While scrolling through the data, we noticed that the data for Sudan is split: from 2004 to 2008 is under the location "Sudan (until 2011)", and from 2014 to 2017 is simply under Sudan.
  
--Make sure that we are not lying! Write a query selecting only location and period columns and filter the values that contain 'Sudan'. Do this by using the where statement alongside the like operator and 'Sudan%' as a value. You should see a list with 7 results.

SELECT Location, Period FROM doctors WHERE Location LIKE 'Sudan%';

--Write an update statement where you change all the different Sudan-like results to simply 'Sudan'. If you Run the query nothing will display, so proceed to the next step.
update doctors set Location='Sudan' where Location LIKE 'Sudan%';

--Without deleting the previous statement, now write a new one selecting the location and period where the location is 'Sudan". Make sure that both sentences have a semicolon at the end.
SELECT Location, Period FROM doctors WHERE Location='Sudan';

--find datatypes:
-- .schema
