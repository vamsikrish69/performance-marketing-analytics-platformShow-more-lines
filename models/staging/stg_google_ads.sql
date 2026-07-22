SELECT
    campaign_id,
    LOWER(TRIM(campaign_name)) AS campaign_name,
    CAST(cost AS NUMERIC) AS spend,
    CAST(impressions AS INT64) AS impressions,
    CAST(clicks AS INT64) AS clicks,
    PARSE_DATE('%m/%d/%Y', date) AS campaign_date,
    'google' AS channel
FROM {{ ref('google_ads') }}
