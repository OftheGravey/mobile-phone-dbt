{{ config(
    materialized="table",
    schema="mobile_games"
) }}

{% set tracked_specs = ['ram', 'clock_speed', 'int_memory', 'n_cores'] %}

SELECT
    bsp."index",
    pxp.px_height,
    pxp.px_width,
    pxp.price_range,
    {%- for spec in tracked_specs -%}
        bsp.{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}
    {% endfor %}
FROM {{ ref('best_specs_for_price') }} AS bsp
INNER JOIN {{ ref('px_range_by_price') }} AS pxp
ON bsp."index" = pxp."index"