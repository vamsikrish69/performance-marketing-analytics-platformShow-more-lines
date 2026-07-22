SELECT
    CAST(conversion_id AS STRING) AS conversion_id,
    CAST(user_id AS STRING) AS customer_id,
    SAFE_CAST(conversion_time AS TIMESTAMP) AS conversion_time,
    DATE(SAFE_CAST(conversion_time AS TIMESTAMP)) AS conversion_date,
    LOWER(TRIM(conversion_type)) AS conversion_type,
    SAFE_CAST(revenue AS NUMERIC) AS revenue
FROM {{ ref('conversions') }}