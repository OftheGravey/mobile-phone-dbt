{{ config(
    materialized="table",
    schema="mobile_games"
) }}

WITH ranked_pixel_size AS (
    SELECT
        "index", 
        price_range,
        px_height,
        px_width,
        PERCENT_RANK() OVER (
            PARTITION BY price_range
            ORDER BY px_height * px_width
        ) rank_pixel_count
    FROM {{ ref('mobile_price_rante') }}
    WHERE price_range IS NOT NULL
)
SELECT
    "index",
    price_range,
    px_height,
    px_width
FROM ranked_pixel_size
WHERE rank_pixel_count > 0.75
