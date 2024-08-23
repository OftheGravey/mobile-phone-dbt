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




    WITH child AS (
        SELECT index AS from_field
        FROM dev_mobile_games.best_size_with_best_specs
        WHERE index IS NOT null
    ),

    parent AS (
        SELECT index AS to_field
        FROM dev_mobile_games.mobile_price_rante
    )

    SELECT from_field

    FROM child
    LEFT JOIN parent
        ON child.from_field = parent.to_field

    WHERE parent.to_field IS null




) AS dbt_internal_test
