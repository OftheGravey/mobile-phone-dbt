{{ config(
    materialized="table",
    schema="mobile_games"
) }}
SELECT "index",
    price_range / ram AS ram_per_price,
    price_range,
    ram
FROM {{ ref('mobile_price_rante') }}
WHERE price_range IS NOT NULL