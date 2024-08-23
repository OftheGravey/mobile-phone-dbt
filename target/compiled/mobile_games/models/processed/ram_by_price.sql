SELECT
    index,
    price_range,
    ram,
    price_range / ram AS ram_per_price
FROM prod_mobile_games.mobile_price_rante
WHERE price_range IS NOT NULL
