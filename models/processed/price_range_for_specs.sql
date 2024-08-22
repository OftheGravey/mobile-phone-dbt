{{ config(
    materialized="table"
) }}

SELECT price_range,
    {%- for spec in var('tracked_specs') -%}
        AVG({{ spec }}) AS avg_{{ spec }}
        {%- if not loop.last -%}
            ,
        {% endif %}
    {% endfor %}
FROM 'mobile_device_specs'
WHERE price_range IS NOT NULL
GROUP BY price_range