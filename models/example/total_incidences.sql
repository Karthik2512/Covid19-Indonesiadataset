{{ config(materialized='table') }}

with source_data as (

    select * FROM "PLAYGROUND_KRISHNA_KARTHIK"."RAW_DATA" LIMIT 20000

)

select total_cases, total_cases_per_million, total_deaths, total_deaths_per_million, case_fatality_rate, total_recovered, case_recovered_rate, total_active_cases, location_iso_code, date
from source_data