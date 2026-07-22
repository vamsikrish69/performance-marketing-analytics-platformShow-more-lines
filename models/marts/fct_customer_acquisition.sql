SELECT
    customer_id,
    signup_date,
    country,
    device_type,

    total_conversions,
    total_customer_revenue,

    first_conversion_date,
    latest_conversion_date,

    customer_conversion_status,

    CASE
        WHEN total_customer_revenue >= 200 THEN 'high_value_customer'
        WHEN total_customer_revenue >= 50 THEN 'medium_value_customer'
        WHEN total_customer_revenue > 0 THEN 'low_value_customer'
        ELSE 'no_revenue'
    END AS customer_value_segment

FROM {{ ref('int_customer_acquisition') }}
