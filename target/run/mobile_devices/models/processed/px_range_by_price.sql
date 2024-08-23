
  
    
    

    create  table
      "mobile_devices"."main"."px_range_by_price__dbt_tmp"
  
    as (
      

WITH ranked_pixel_size AS (
    SELECT
        id,
        price_range,
        px_height,
        px_width,
        PERCENT_RANK() OVER (
            PARTITION BY price_range
            ORDER BY px_height * px_width
        ) AS rank_pixel_count
    FROM mobile_device_specs
    WHERE price_range IS NOT NULL
)

SELECT
    id,
    price_range,
    px_height,
    px_width
FROM ranked_pixel_size
WHERE rank_pixel_count > 0.75
    );
  
  