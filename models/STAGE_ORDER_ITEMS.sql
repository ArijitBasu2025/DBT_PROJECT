{{
    config(
        materialized='table',transient=False
    )
}}
SELECT
    ID as ORDER_ITEMS_ID,
    ORDER_ID,
    PRODUCT_ID,
    QUANTITY,
    UNIT_PRICE
FROM {{ source('RAW_SRC', 'RAW_ORDER_ITEMS') }}