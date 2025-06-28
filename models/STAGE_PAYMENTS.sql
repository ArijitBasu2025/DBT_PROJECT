{{
    config(
        materialized='table',transient=False
    )
}}
select 
ID AS PAYMENT_ID,
ORDER_ID,
AMOUNT,
PAYMENT_METHOD
FROM {{ source('RAW_SRC', 'RAW_PAYMENTS') }}