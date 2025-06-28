{{
    config(
        materialized='table',transient=False
    )
}}
SELECT
    ID as ORDER_ID,
    CUSTOMER_ID,
    STATUS,
    TOTAL_AMOUNT
FROM {{ source('RAW_SRC', 'RAW_ORDERS') }}