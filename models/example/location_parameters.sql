{{ config(materialized='table') }}

with source_data as (

    select * FROM "PLAYGROUND_KRISHNA_KARTHIK"."RAW_DATA" LIMIT 20000

)

select DISTINCT location_iso_code, location, island, latitude, longitude
from source_data