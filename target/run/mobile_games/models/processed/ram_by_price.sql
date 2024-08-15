
  
    
    
    create  table prod_mobile_games."ram_by_price"
    as
        
SELECT "index",
    price_range / ram AS ram_per_price,
    price_range,
    ram
FROM prod_mobile_games."mobile_price_rante"
WHERE price_range IS NOT NULL

  