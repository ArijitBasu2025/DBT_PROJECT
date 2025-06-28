{{
    config(
        materialized='table',transient=False
    )
}}

SELECT 
  ID AS CUS_ID,
  NAME AS CUS_NAME,
  REGION AS CUS_REGION 
FROM {{ source('RAW_SRC', 'RAW_CUSTOMERS') }}