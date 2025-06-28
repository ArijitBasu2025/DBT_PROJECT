{{
    config(
        materialized='table',transient=False
    )
}}
SELECT
    ID as PRODUCT_ID,
    NAME,
    CATEGORY,
    PRICE as PRODUCT_PRICE
FROM {{ source('RAW_SRC', 'RAW_PRODUCTS') }}