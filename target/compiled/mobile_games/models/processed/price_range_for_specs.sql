SELECT
    price_range,
    AVG(ram) AS avg_ram,

    AVG(clock_speed) AS avg_clock_speed,

    AVG(int_memory) AS avg_int_memory,

    AVG(n_cores) AS avg_n_cores

FROM prod_mobile_games.mobile_price_rante
WHERE price_range IS NOT NULL
GROUP BY price_range
