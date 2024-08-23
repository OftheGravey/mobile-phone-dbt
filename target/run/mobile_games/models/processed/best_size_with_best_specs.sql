CREATE TABLE prod_mobile_games.best_size_with_best_specs
AS


SELECT
    bsp.index,
    pxp.px_height,
    pxp.px_width,
    pxp.price_range,
    bsp.ram,

    bsp.clock_speed,

    bsp.int_memory,

    bsp.n_cores

FROM prod_mobile_games.best_specs_for_price AS bsp
INNER JOIN prod_mobile_games.px_range_by_price AS pxp
    ON bsp.index = pxp.index
