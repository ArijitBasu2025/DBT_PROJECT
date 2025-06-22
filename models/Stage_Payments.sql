{{
    config
    (
        materialized='table'
    )
}}
SELECT * FROM 
{{source('raw_src','RAW_PAYMENTS')}}