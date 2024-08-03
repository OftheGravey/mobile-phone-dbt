SELECT price_range
FROM {{ ref("ram_by_price") }}
WHERE price_range < 0 or price_range > 3