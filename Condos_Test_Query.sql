--Commit a simple query to show we can commit changes to github.

--Query to determine which condos have not had a service request.
SELECT CONDO_UNIT.CONDO_ID
FROM CONDO_UNIT
LEFT JOIN SERVICE_REQUEST ON CONDO_UNIT.CONDO_ID = SERVICE_REQUEST.CONDO_ID
WHERE SERVICE_REQUEST.CONDO_ID IS NULL
