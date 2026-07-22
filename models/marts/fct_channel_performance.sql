SELECT
    channel,

    COUNT(DISTINCT campaign_id) AS total_campaigns,

    SUM(total_spend) AS total_spend,
    SUM(total_impressions) AS total_impressions,
    SUM(total_clicks) AS total_clicks,

    SUM(total_conversions) AS total_conversions,
    SUM(converted_customers) AS converted_customers,
    SUM(total_revenue) AS total_revenue,

    ROUND(
        SUM(total_clicks) / NULLIF(SUM(total_impressions), 0),
        4
    ) AS channel_ctr,

    ROUND(
        SUM(total_revenue) / NULLIF(SUM(total_spend), 0),
        2
    ) AS channel_roas,

    ROUND(
        SUM(total_spend) / NULLIF(SUM(converted_customers), 0),
        2
    ) AS channel_cac,

    ROUND(
        (SUM(total_revenue) - SUM(total_spend)) / NULLIF(SUM(total_spend), 0),
        2
    ) AS channel_roi,

    ROUND(
        SUM(total_conversions) / NULLIF(SUM(total_clicks), 0),
        4
    ) AS channel_conversion_rate

FROM {{ ref('fct_campaign_performance') }}

GROUP BY
    channel
