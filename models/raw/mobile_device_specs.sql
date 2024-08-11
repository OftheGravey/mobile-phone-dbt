{{ config(
    materialized="table",
    schema="mobile_devices"
) }}

SELECT * FROM mobile_device_specs