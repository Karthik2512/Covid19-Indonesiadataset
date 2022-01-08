{{ config(materialized='table') }}

SELECT ni.new_cases, ti.total_cases, ni.date, lp.location
FROM new_incidences ni
INNER JOIN
total_incidences ti ON ni.date = ti.date AND ni.location_iso_code = ti.location_iso_code
INNER JOIN 
location_parameters lp ON ni.location_iso_code = lp.location_iso_code
LIMIT 20000