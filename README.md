# Performance Marketing Analytics Platform

## Overview

The Performance Marketing Analytics Platform is an end-to-end analytics engineering project built using BigQuery, dbt Cloud, SQL, and GitHub.

The platform transforms raw advertising, customer, and conversion datasets into business-ready analytical models that enable campaign performance reporting, customer acquisition analysis, channel comparison, and marketing KPI measurement.

The project follows modern Analytics Engineering best practices using a layered dbt architecture consisting of staging, intermediate, marts, and business analysis layers.

---

## Business Problem

Marketing teams invest heavily across channels such as Google Ads and Meta Ads but often struggle to answer critical business questions:

- Which campaigns generate the highest ROAS?
- Which marketing channels perform best?
- Which campaigns should be optimized?
- Which customer segments generate the most revenue?
- How efficiently is marketing spend being converted into business results?

This platform centralizes marketing data and provides trusted analytical datasets to support data-driven decision making.

---

## Technology Stack

### Cloud & Warehouse

- Google BigQuery

### Analytics Engineering

- dbt Cloud
- SQL
- Data Modeling

### Development & Version Control

- GitHub

---

## Architecture

```text
Raw Seed Data
      │
      ▼
Staging Layer
      │
      ▼
Intermediate Layer
      │
      ▼
Marts Layer
      │
      ▼
Business Analysis Layer
```

---

## Source Datasets

The project uses four marketing-related source datasets:

```text
google_ads.csv
meta_ads.csv
customers.csv
conversions.csv
```

These datasets are loaded into BigQuery using dbt Seeds.

---

## Project Structure

```text
performance-marketing-analytics-platform/

├── analyses/
├── business_queries/
├── data/
│   └── seeds/
├── docs/
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
├── screenshots/
├── packages.yml
├── dbt_project.yml
└── README.md
```

---

# Data Model Layers

## Staging Layer

The staging layer standardizes and cleans raw source data.

Models:

```text
stg_google_ads
stg_meta_ads
stg_customers
stg_conversions
```

Responsibilities:

- Standardize field names
- Cast data types
- Parse dates
- Clean text fields
- Prepare source data for transformation

---

## Intermediate Layer

The intermediate layer applies business transformation logic.

Models:

```text
int_campaign_spend
int_campaign_conversions
int_customer_acquisition
```

Responsibilities:

- Campaign spend aggregation
- Conversion aggregation
- Revenue aggregation
- Customer acquisition preparation

---

## Marts Layer

The marts layer provides business-ready reporting tables.

Models:

```text
fct_campaign_performance
fct_channel_performance
fct_customer_acquisition
```

Responsibilities:

- Campaign reporting
- Channel reporting
- Customer reporting
- KPI calculation

---

# Marketing KPIs Calculated

The platform calculates:

- Total Spend
- Total Revenue
- Total Conversions
- Converted Customers
- Impressions
- Clicks
- CTR
- ROAS
- CAC
- ROI
- Conversion Rate
- Customer Value Segments

---

# Business Analysis Queries

The project contains business-focused analytical queries.

## Top Campaigns by ROAS

Answers:

```text
Which campaigns generate the highest Return on Advertising Spend?
```

---

## Channel Performance Summary

Answers:

```text
Which marketing channel performs best?
```

---

## Customer Acquisition Analysis

Answers:

```text
Which customer segments generate the highest value?
```

---

## Low Performing Campaigns

Answers:

```text
Which campaigns require optimization?
```

---

## Updated Low Performing Campaigns

Answers:

```text
Which campaigns are the weakest relative performers even when all campaigns remain profitable?
```

---

# Documentation

Detailed project documentation is available under:

```text
docs/
```

Included documentation:

```text
project_overview.md
architecture.md
data_model.md
business_logic.md
```

---

# Business Queries Documentation

Business-focused query explanations are available under:

```text
business_queries/
```

Included documents:

```text
top_campaigns_by_roas.md
channel_performance_summary.md
customer_acquisition_analysis.md
low_performing_campaigns.md
updt_low_prfmnc_campaign.md
```

---

# Screenshots

Project screenshots are available under:

```text
screenshots/
```

Including:

- dbt Project Structure
- dbt Lineage Graph
- BigQuery Tables
- Campaign Performance Outputs
- dbt Test Results
- Business Query Outputs

---

# Data Quality Testing

dbt tests implemented include:

- Not Null Tests
- Unique Tests
- Accepted Values Tests

The project validates:

- Campaign IDs
- Customer IDs
- Revenue Fields
- Marketing Channels
- Device Types
- Customer Segments

---

# dbt Build Result

The platform was successfully validated using:

```bash
dbt build
```

Final Result:

```text
83 Passed
0 Warnings
0 Errors
0 Skips
```

This confirms the entire pipeline executes successfully end-to-end.

---

# Business Value

This platform enables marketing teams to:

- Measure campaign performance
- Compare marketing channels
- Identify optimization opportunities
- Understand customer behavior
- Improve budget allocation
- Increase advertising efficiency
- Monitor marketing ROI

---

# Key Skills Demonstrated

- Analytics Engineering
- BigQuery
- dbt Cloud
- SQL Development
- Data Modeling
- Marketing Analytics
- Campaign Measurement
- Customer Acquisition Analytics
- Data Quality Testing
- GitHub Project Management

---

# Project Outcome

This project demonstrates how modern analytics engineering practices can transform raw marketing data into reliable business intelligence assets that support campaign optimization, customer acquisition analysis, and executive reporting.
