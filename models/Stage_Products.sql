{{
    config
    (
        materialized='table'
    )
}}
select * from 
{{ source('raw_src', 'RAW_PRODUCTS')}}