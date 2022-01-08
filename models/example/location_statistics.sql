{{ config(materialized='table') }}

with source_data as (

    select * FROM "PLAYGROUND_KRISHNA_KARTHIK"."RAW_DATA" LIMIT 20000

)

select DISTINCT location_iso_code, population, population_density, total_urban_villages, total_rural_villages
from source_data