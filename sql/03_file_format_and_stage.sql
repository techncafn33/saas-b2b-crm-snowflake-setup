-- Create a named CSV file format
CREATE OR REPLACE FILE FORMAT ff_csv_accounts
    TYPE = CSV
    SKIP_HEADER = 1
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    TRIM_SPACE = TRUE
    NULL_IF = ('', 'NULL', 'null');


-- Create Stage:
-- Use your database
USE DATABASE saas_b2b_crm;



USE SCHEMA crm;

-- Create an internal stage
CREATE OR REPLACE STAGE stg_accounts
    FILE_FORMAT = ff_csv_accounts;SAAS_B2B_CRM.CRM.STG_ACCOUNTS

--check file with format
SELECT $1, $2, $3, $4, $5
FROM @stg_accounts/accounts.csv
(FILE_FORMAT => ff_csv_accounts)
LIMIT 10;
