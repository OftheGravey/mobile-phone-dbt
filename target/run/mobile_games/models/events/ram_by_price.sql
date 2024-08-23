CREATE TABLE dev_mobile_games.ram_by_price
AS


SELECT
    price_range,
    ram,
    price_range / ram AS ram_per_price
FROM dev_mobile_games.mobile_price_rante
WHERE price_range IS NOT NULL
