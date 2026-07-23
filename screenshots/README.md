# Project Screenshots

This folder contains screenshots demonstrating the complete implementation of the Performance Marketing Analytics Platform.

The screenshots provide visual evidence of project architecture, dbt implementation, model development, successful pipeline execution, business-facing analytical outputs, and warehouse objects.

---

## Screenshot Categories

### 1. dbt Structure

Folder:

```text
dbt_structure/
```

Contains screenshots showing:

- Overall dbt project structure
- Project organization
- Models folder structure
- Documentation folders
- Business query folders

Purpose:

To demonstrate project organization and dbt best practices.

---

### 2. dbt Build Success

Folder:

```text
dbt_build_success/
```

Contains screenshots showing:

- Successful dbt build execution
- Model execution status
- Test execution status

Expected Result:

```text
83 Passed
0 Errors
0 Skipped
```

Purpose:

To validate successful end-to-end pipeline execution.

---

### 3. Staging Layer

Folder:

```text
staging_layer/
```

Contains screenshots showing:

```text
stg_google_ads
stg_meta_ads
stg_customers
stg_conversions
```

Purpose:

To demonstrate source data standardization and preparation.

---

### 4. Intermediate Layer

Folder:

```text
intermediate_layer/
```

Contains screenshots showing:

```text
int_campaign_spend
int_campaign_conversions
int_customer_acquisition
```

Purpose:

To demonstrate business transformation logic and aggregation.

---

### 5. Marts Layer

Folder:

```text
marts_layer/
```

Contains screenshots showing:

```text
fct_campaign_performance
fct_channel_performance
fct_customer_acquisition
```

Purpose:

To demonstrate business-ready reporting models.

---

### 6. dbt Lineage Graph

Folder:

```text
dbt_lineage_graph/
```

Contains screenshots showing complete dbt lineage.

Flow:

```text
Seeds
↓
Staging
↓
Intermediate
↓
Marts
↓
Business Queries
```

Purpose:

To demonstrate model dependency management and analytics engineering architecture.

---

### 7. Business Queries

Folder:

```text
business_queries/
```

Contains screenshots of analytical query outputs.

Queries Included:

```text
Top Campaigns by ROAS
Channel Performance Summary
Customer Acquisition Analysis
Updated Low Performing Campaigns
```

Purpose:

To demonstrate business-facing analytical outputs and marketing insights.

---

## Business Value

The screenshots collectively demonstrate:

- Analytics Engineering
- BigQuery Development
- dbt Cloud Development
- Data Modeling
- Data Quality Testing
- Campaign Performance Analysis
- Channel Performance Reporting
- Customer Acquisition Analytics
- Marketing KPI Measurement
- End-to-End Analytics Pipeline Development
