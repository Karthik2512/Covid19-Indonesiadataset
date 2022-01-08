{{ config(materialized='table') }}

with source_data as (

    select * FROM "PLAYGROUND_KRISHNA_KARTHIK"."RAW_DATA" LIMIT 20000

)

select new_cases, new_cases_per_million, new_deaths, new_deaths_per_million, new_active_cases, growth_factor_of_new_cases, growth_factor_of_new_cases new_recovered, location_iso_code, date
from source_data