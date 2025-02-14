-- source:
-- https://www.linkedin.com/pulse/comprehensive-guide-creating-database-postgresql-saeed-roohbakhsh-lzvaf/

-- Create a simple database with the default settings
CREATE DATABASE my_db;

-- Create a database and specify the owner (database administrator)
CREATE DATABASE my_db WITH OWNER = user;

-- Create a new database using an existing database as a template
-- This copies all schema, tables, and configurations from the template database
CREATE DATABASE my_db2 WITH TEMPLATE = my_db;

-- Create a database with a specific character encoding (UTF-8 is recommended for multilingual support)
CREATE DATABASE my_db WITH ENCODING = 'UTF8';

-- Set the collation order for string sorting (affects ORDER BY operations)
CREATE DATABASE my_db WITH LC_COLLATE = 'en_US.UTF-8';

-- Define how character classification (e.g., uppercase/lowercase rules) should work
CREATE DATABASE my_db WITH LC_CTYPE = 'en_US.UTF-8';

-- Specify a custom tablespace to define the physical storage location of the database
CREATE DATABASE my_db WITH TABLESPACE = my_tablespace;

-- Limit the number of concurrent connections to the database (default is unlimited, -1)
CREATE DATABASE my_db WITH CONNECTION LIMIT = 100;

-- Create a database that serves as a template for future databases
-- When IS_TEMPLATE = TRUE, this database cannot be dropped
CREATE DATABASE my_template IS TEMPLATE = TRUE;
