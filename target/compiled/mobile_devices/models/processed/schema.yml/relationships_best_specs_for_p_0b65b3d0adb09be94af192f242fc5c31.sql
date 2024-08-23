WITH child AS (
    SELECT id AS from_field
    FROM prod_mobile_devices.best_specs_for_price
    WHERE id IS NOT null
),

parent AS (
    SELECT id AS to_field
    FROM prod_mobile_devices.mobile_device_specs
)

SELECT from_field

FROM child
LEFT JOIN parent
    ON child.from_field = parent.to_field

WHERE parent.to_field IS null
