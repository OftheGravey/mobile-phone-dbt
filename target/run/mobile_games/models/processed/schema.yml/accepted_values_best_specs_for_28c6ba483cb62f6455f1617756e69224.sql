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




    WITH all_values AS (

        SELECT
            price_range AS value_field,
            count(*) AS n_records

        FROM dev_mobile_games.best_specs_for_price
        GROUP BY price_range

    )

    SELECT *
    FROM all_values
    WHERE value_field NOT IN (
        '0.0', '1.0', '2.0', '3.0'
    )




) AS dbt_internal_test
