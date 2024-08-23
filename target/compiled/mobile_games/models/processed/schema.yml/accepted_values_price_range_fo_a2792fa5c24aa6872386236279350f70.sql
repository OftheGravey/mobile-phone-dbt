WITH all_values AS (

    SELECT
        price_range AS value_field,
        count(*) AS n_records

    FROM dev_mobile_games.price_range_for_specs
    GROUP BY price_range

)

SELECT *
FROM all_values
WHERE value_field NOT IN (
    '0.0', '1.0', '2.0', '3.0'
)
