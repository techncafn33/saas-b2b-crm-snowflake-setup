
-- load into accounts table
-- apply this example with the Accounts table to the additional tables, updating per table
COPY INTO ACCOUNTS
FROM @stg_accounts/accounts.csv
FILE_FORMAT = (FORMAT_NAME = ff_csv_accounts)
ON_ERROR = CONTINUE;


--optional queries to check table

SELECT COUNT(*) FROM ACCOUNTS;

SELECT *
FROM ACCOUNTS
LIMIT 20;

SHOW TABLES IN DATABASE saas_b2b;


SELECT distinct(accountid)
FROM ACCOUNTS
order by accountid;
