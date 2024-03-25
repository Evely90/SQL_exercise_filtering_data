-- This file creates the schema(s)

-- Table structure for table `doctor`
--
CREATE TABLE doctors (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Location VARCHAR(45) NOT NULL,
  Period INTEGER NOT NULL,
  Indicator VARCHAR(45) NOT NULL,
  Count INTEGER NOT NULL
);
