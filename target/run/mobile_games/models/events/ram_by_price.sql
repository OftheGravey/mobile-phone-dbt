
  
    
    
    create  table dev_mobile_games."ram_by_price"
    as
        

SELECT price_range / ram AS ram_per_price,
    price_range,
    ram
FROM dev_mobile_games."mobile_price_rante"
WHERE price_range IS NOT NULL

  