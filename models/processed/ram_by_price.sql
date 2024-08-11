{{ config(
    materialized="table",
    schema="mobile_devices"
) }}
SELECT "id",
    price_range / ram AS ram_per_price,
    price_range,
    ram
FROM {{ ref('mobile_device_specs') }}
WHERE price_range IS NOT NULL