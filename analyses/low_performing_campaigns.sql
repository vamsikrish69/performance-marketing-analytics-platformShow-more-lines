SELECT
    campaign_id,
    campaign_name,
    channel,
    total_spend,
    total_revenue,
    total_conversions,
    roas,
    cac,
    roi,
    conversion_rate
FROM {{ ref('fct_campaign_performance') }}
WHERE roas < 1
   OR roi < 0
   OR total_conversions = 0
ORDER BY
    total_spend DESC,
    roas ASC
