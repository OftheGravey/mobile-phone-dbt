
  
    
    
    create  table prod_mobile_devices."px_range_by_price"
    as
        

WITH ranked_pixel_size AS (
    SELECT
        "id", 
        price_range,
        px_height,
        px_width,
        PERCENT_RANK() OVER (
            PARTITION BY price_range
            ORDER BY px_height * px_width
        ) rank_pixel_count
    FROM prod_mobile_devices."mobile_device_specs"
    WHERE price_range IS NOT NULL
)
SELECT
    "id",
    price_range,
    px_height,
    px_width
FROM ranked_pixel_size
WHERE rank_pixel_count > 0.75

  