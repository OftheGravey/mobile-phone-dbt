{{ config(
    materialized="table",
    schema="mobile_games"
) }}

SELECT "index",
    mpr.price_range, 
    {%- for spec in var('tracked_specs') -%}
        mpr.{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}
    {% endfor %}
FROM {{ ref('mobile_price_rante') }}  mpr
INNER JOIN {{ ref("price_range_for_specs") }} prs
ON  mpr.price_range = prs.price_range AND
    {% for spec in var('tracked_specs') %}
        mpr.{{ spec }} > prs.avg_{{ spec }}
        {% if not loop.last %}
            AND
        {% endif %}
    {% endfor %}
WHERE mpr.price_range IS NOT NULL