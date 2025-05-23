# Hometime Booking Analytics (Snowflake + dbt)

This project demonstrates a complete end-to-end data pipeline built using **Snowflake**, **dbt**, and designed to support analytics around bookings, property performance, and revenue.

---

## 🔧 Tools Used

- **Snowflake** – for data storage, raw ingestion, and schema management  
- **dbt (data build tool)** – for modular SQL transformation, data modeling, and lineage tracking  
- **Power BI** *(optional next layer)* – for reporting and dashboard visualization

---

## 📐 Project Structure

The project uses a clean layered architecture following dbt best practices:


---

## Key Models

| Model Name | Layer | Description |
|------------|-------|-------------|
| `raw_listings` | Raw | Uploaded CSV of property listings |
| `raw_bookings` | Raw | Uploaded CSV of booking records |
| `stg_listings` | Staging | Cleaned view of listings with selected columns |
| `stg_bookings` | Staging | Cleaned view of bookings, formatted for analysis |
| `fact_bookings` | Marts | Core fact model calculating total revenue, length of stay, etc. |

---

##  Process Overview

1. **Data Ingestion**  
   - Uploaded CSVs to an internal Snowflake stage (`raw.csv_stage`)
   - Used `COPY INTO` to load raw data into Snowflake tables

2. **Data Transformation (dbt)**  
   - Defined sources using `src.yml`
   - Built modular `stg_` models for both listings and bookings
   - Created a fact model `fact_bookings` to calculate:
     - `length_of_stay`
     - `total_amount` (revenue)
     - Bookings joined with property details

3. **Version Control**  
   - All models, config files (`dbt_project.yml`, `src.yml`), and logic are maintained and versioned through this GitHub repository

---

## Potential Dashboards (on-going)

This dataset is structured and optimized for BI tools like Power BI. Example visuals that can be built:
- Total revenue by city or property type
- Average nightly rate per month
- Top listings by total amount booked
- Booking volume by date and location

---

##  Highlights

- Follows dbt best practices (modular models, materialized views, `ref()` and `source()`)
- Clear schema separation (`raw`, `staging`, `marts`)
- Git version-controlled with clean commit history
- Ready for BI connection and dashboarding

---

##  Author

Ria Orolfo  


---

## 📌 Notes

This project is intended solely for portfolio demonstration and does not represent production work for any organization.

