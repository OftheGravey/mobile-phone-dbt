{{ config(
    materialized="table",
    schema="mobile_games"
) }}

{% set tracked_specs = ['ram', 'clock_speed', 'int_memory', 'n_cores', 'px_height', 'px_width'] %}

SELECT price_range,
    {%- for spec in tracked_specs -%}
        AVG({{ spec }}) AS avg_{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}

    {% endfor %}
FROM {{ ref('mobile_price_rante') }}
WHERE price_range IS NOT NULL
GROUP BY price_range