{{ config(
    materialized="table",
    schema="mobile_games"
) }}

SELECT * FROM mobile_price_rante