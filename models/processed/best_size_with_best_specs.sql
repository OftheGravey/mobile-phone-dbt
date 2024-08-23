{{ config(
    materialized="table"
) }}

SELECT
    bsp.id,
    pxp.px_height,
    pxp.px_width,
    pxp.price_range,
    {%- for spec in var('tracked_specs') -%}
        
        
        bsp.{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}
    {% endfor %}
FROM {{ ref('best_specs_for_price') }} AS bsp
INNER JOIN {{ ref('px_range_by_price') }} AS pxp
    ON
        bsp.id = pxp.id
