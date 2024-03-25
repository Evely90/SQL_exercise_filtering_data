-- Imports and executes the schema
-- Without the schema, we cannot import our CSV file into the database
.read schema.sql

  
  -- Imports data from the doctors.csv file
.mode csv
.import doctors.csv doctors
