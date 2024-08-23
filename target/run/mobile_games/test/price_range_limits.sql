SELECT
    count(*) AS failures,
    CASE
        WHEN count(*) != 0
            THEN 'true'
        ELSE 'false'
    END AS should_warn,
    CASE
        WHEN count(*) != 0
            THEN 'true'
        ELSE 'false'
    END AS should_error
FROM (
    SELECT price_range
    FROM dev_mobile_games.ram_by_price
    WHERE price_range < 0 OR price_range > 3

) AS dbt_internal_test
