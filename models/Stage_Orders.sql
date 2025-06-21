{{
    config
    (
        materialized='table'
    )
}}
SELECT * FROM DBT_PROJECT_DB.RAW_SCHEMA.RAW_ORDERS