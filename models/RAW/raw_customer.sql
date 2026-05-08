{{
    config(
        materialized='table'
    )
}}

select * from 
{{ source('globalmart', 'customers') }}
-- RAW.GLOBALMART.CUSTOMERS