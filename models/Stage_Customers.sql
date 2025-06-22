{{
    config
    (
        materialized='table'
    )
}}
SELECT *
from 
{{source('raw_src', 'RAW_CUSTOMERS')}}