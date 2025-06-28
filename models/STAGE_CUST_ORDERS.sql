{{
    config(
        materialized='view',secure=True
    )
}}
with CUSTOMERS AS 
    (SELECT * FROM {{ ref('STAGE_CUSTOMERS') }}),
    ORDERS AS
    (SELECT * FROM {{ ref('STAGE_ORDERS') }})

SELECT
 Cus.cus_id,
 Cus.cus_name,
 Ord.Status,
 Ord.TOTAL_AMOUNT
FROM CUSTOMERS Cus LEFT JOIN ORDERS Ord
ON 
Cus.cus_id =Ord.CUSTOMER_ID