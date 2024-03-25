-- Setup
.read setup.sql

-- For this exercise, we'll explore how to clean and add new data to the table, based on existing data. We are going to create a column that will tell us if the country was in risk by looking at the number of doctors per 10.000.

-- You can write all queries in the same file (main.sql). Try to maintain your code tidy and clear, use comments to explain what you are doing, and remember to end every query with a semicolon!
  
-- Query (Start coding below)
  --Start by removing the Indicator column. It's not very necessary. Use the alter and drop statements.
ALTER TABLE doctors
  DROP COLUMN Indicator;

--Change the name of the column Count to something more meaningful. Use the alter and rename keywords.
ALTER TABLE doctors
  RENAME COLUMN count TO Doctors_per10k;

--Now, create the new column. Give it a good name following the naming conventions, making sure that it matches with the possible answers (1-True, or 0-False) Use INTEGER as a datatype. Use the alter and add keywords.
--✨ Bonus (optional): Force the values to be only 1 and 0.
ALTER TABLE doctors
ADD risk INTEGER CHECK(risk IN (0,1))

--Now populate the new column using the update keyword. You will have to set a condition with a where statement. Let's say that the value 0 (false) is for values over 30 and 1 (True) for everything below (or equal to) 30.
UPDATE doctors
  SET risk = 0 WHERE Doctors_per10k>30;
UPDATE doctors
  SET risk = 1 WHERE Doctors_per10k<=30;

--Finally, select all the columns, and order them by ascending location and descending number of doctors. Check on the console that everything displays normally. Don't Run the REPLit yet.
SELECT * FROM doctors
ORDER BY
  Location ASC,
  Doctors_per10k DESC;

--Use the pragma statement to retrieve the table info.
PRAGMA table_info(doctors);
