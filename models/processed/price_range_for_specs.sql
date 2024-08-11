{{ config(
    materialized="table",
    schema="mobile_games"
) }}

SELECT price_range,
    {%- for spec in var('tracked_specs') -%}
        AVG({{ spec }}) AS avg_{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}
    {% endfor %}
FROM {{ ref('mobile_price_rante') }}
WHERE price_range IS NOT NULL
GROUP BY price_range