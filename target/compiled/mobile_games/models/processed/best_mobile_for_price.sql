SELECT
    mpr.price_range,
    mpr.ram,
    mpr.clock_speed,
    mpr.int_memory,
    mpr.n_cores,
    mpr.px_height,
    mpr.px_width
FROM dev_mobile_games.mobile_price_rante AS mpr
INNER JOIN dev_mobile_games.price_range_for_specs AS prs
    ON
        mpr.price_range = prs.price_range
        AND mpr.ram > prs.avg_ram
        AND mpr.clock_speed > prs.avg_clock_speed
        AND mpr.int_memory > prs.avg_int_memory
        AND mpr.n_cores > prs.avg_n_cores
        AND mpr.px_height > prs.avg_px_height
        AND mpr.px_width > prs.avg_px_width
WHERE mpr.price_range IS NOT NULL
