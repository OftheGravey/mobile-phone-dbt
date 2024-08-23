
  
    
    

    create  table
      "mobile_devices"."main"."best_size_with_best_specs__dbt_tmp"
  
    as (
      

SELECT
    bsp.id,
    pxp.px_height,
    pxp.px_width,
    pxp.price_range,bsp.ram,
        
    bsp.clock_speed,
        
    bsp.int_memory,
        
    bsp.n_cores
    
FROM "mobile_devices"."main"."best_specs_for_price" AS bsp
INNER JOIN "mobile_devices"."main"."px_range_by_price" AS pxp
    ON
        bsp.id = pxp.id
    );
  
  