# Fivetran DBT Demo

This repository demonstrates a simple analytics pipeline using [dbt](https://www.getdbt.com/) to transform ecommerce data loaded by Fivetran from Google Sheets into Teradata.

---

## 📁 Project Structure

```
.
├── dbt_project.yml
├── profiles.yml
├── README.md
├── models/
│   └── ecommerce/
│       ├── aggregate/
│       │   ├── customer_demographics.sql
│       │   ├── product_popularity.sql
│       │   ├── purchase_patterns.sql
│       │   └── schema.yml
│       ├── sources/
│       │   └── fivetran_sources.yml
│       └── staging/
│           ├── schema.yml
│           ├── stg_customers.sql
│           ├── stg_products.sql
│           └── stg_purchases.sql
├── seeds/
│   └── .gitkeep
├── snapshots/
│   └── .gitkeep
├── tests/
│   └── .gitkeep
└── .gitignore
```

---

## 🔄 Data Flow

### 1. **Sources**

Defined in `models/ecommerce/sources/fivetran_sources.yml`, referencing raw tables loaded by Fivetran:

* `google_sheets_ecom_users`
* `google_sheets_ecom_products`
* `google_sheets_ecom_purchases`

### 2. **Staging Models**

Located in `models/ecommerce/staging/`, these models clean and standardize the raw data:

* `stg_customers.sql`
* `stg_products.sql`
* `stg_purchases.sql`

### 3. **Aggregate Models**

Located in `models/ecommerce/aggregate/`, these models provide analytics-ready tables:

* `customer_demographics.sql`
* `product_popularity.sql`
* `purchase_patterns.sql`

---

## ⚙️ Setup

### Prerequisites

* [dbt](https://docs.getdbt.com/docs/installation)
* Access to a Teradata instance
* A Fivetran pipeline loading Google Sheets data into Teradata

### Installation & Usage

1. **Clone the repository**

   ```bash
   git clone https://github.com/Teradata/fivetran-dbt-demo.git
   cd fivetran-dbt-demo
   ```

2. **Configure your dbt profile**
   Edit `profiles.yml` with your Teradata credentials.

3. **Run dbt models**

   ```bash
   dbt run
   ```

4. **Test your models**

   ```bash
   dbt test
   ```

---

## 📚 Model Documentation

See model definitions and descriptions in:

* Sources: `models/ecommerce/sources/fivetran_sources.yml`
* Staging: `models/ecommerce/staging/schema.yml`
* Aggregates: `models/ecommerce/aggregate/schema.yml`

---

## 📄 License

**MIT**
*This project is for demonstration purposes only.*
