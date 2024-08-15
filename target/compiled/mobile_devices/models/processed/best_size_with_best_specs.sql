

SELECT
    bsp."id",
    pxp.px_height,
    pxp.px_width,
    pxp.price_range,bsp.ram,
        
    bsp.clock_speed,
        
    bsp.int_memory,
        
    bsp.n_cores
    
FROM prod_mobile_devices."best_specs_for_price" AS bsp
INNER JOIN prod_mobile_devices."px_range_by_price" AS pxp
ON bsp."id" = pxp."id"