# E-Commerce Database Project

A comprehensive SQL-based e-commerce database schema designed for data analytics and business intelligence.

## Project Overview

This project contains a fully normalized relational database for an e-commerce platform with:
- **Customers** - User profiles and demographics
- **Products** - Inventory and catalog management
- **Orders** - Transaction data with order details
- **Payments** - Payment processing information
- **Reviews** - Customer feedback and ratings
- **Categories** - Product categorization

## Database Support

- MySQL 8.0+
- PostgreSQL 12+
- SQL Server 2019+

## Project Structure

```
ecommerce-db/
├── README.md                 # This file
├── schema.sql               # Database schema (DDL)
├── sample_data.sql          # Sample data (DML)
├── analytical_queries.sql   # Analytics queries for data analysis
└── .gitignore
```

## Quick Start

### 1. Create Database

**For MySQL:**
```bash
mysql -u root -p < schema.sql
mysql -u root -p < sample_data.sql
```

**For PostgreSQL:**
```bash
psql -U postgres -f schema.sql
psql -U postgres -f sample_data.sql
```

**For SQL Server:**
```bash
sqlcmd -S server_name -U user -P password -i schema.sql
sqlcmd -S server_name -U user -P password -i sample_data.sql
```

### 2. Run Analytics Queries

Open `analytical_queries.sql` to see pre-built queries for:
- Customer behavior analysis
- Product performance metrics
- Revenue insights
- Order trends
- Customer lifetime value (CLV)

## Schema Design

### Key Tables

| Table | Purpose |
|-------|---------|
| customers | Customer profiles |
| categories | Product categories |
| products | Product catalog |
| orders | Order transactions |
| order_items | Line items per order |
| payments | Payment records |
| reviews | Customer reviews |

### Key Relationships

- Customers → Orders (1:M)
- Customers → Reviews (1:M)
- Products → Orders (M:M through order_items)
- Orders → Payments (1:1)
- Products → Reviews (1:M)

## Data Analytics Focus

This database is optimized for:
- ✅ Customer segmentation & RFM analysis
- ✅ Revenue & sales metrics
- ✅ Product performance tracking
- ✅ Customer lifetime value (CLV)
- ✅ Churn analysis
- ✅ Cohort analysis
- ✅ Conversion funnel analysis

## Sample Data

The project includes realistic sample data:
- 100 customers
- 50 products across 5 categories
- 500+ orders
- Payment and review records

Perfect for practicing SQL analytics queries!

## SQL Skills Covered

- ✅ JOINs (INNER, LEFT, RIGHT, FULL)
- ✅ Aggregation functions (SUM, COUNT, AVG, MAX, MIN)
- ✅ GROUP BY & HAVING
- ✅ Subqueries & CTEs
- ✅ Window functions (ROW_NUMBER, RANK, DENSE_RANK)
- ✅ Date functions & filtering
- ✅ CASE WHEN logic
- ✅ STRING functions

**Happy analyzing!** 📊
