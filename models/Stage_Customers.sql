{{
    config
    (
        materialized='table'
    )
}}
SELECT *
from DBT_PROJECT_DB.RAW_SCHEMA.RAW_CUSTOMERS