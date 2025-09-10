📌 Project Overview

This project analyzes Blinkit’s sales data to derive meaningful insights into customer behavior, product performance, and outlet trends. Using SQL, Python, Excel, and Power BI, the analysis covers data cleaning, KPI tracking, and visualization of sales metrics to support data-driven decision-making.

The goal of this project is to showcase end-to-end data analysis skills — from raw data preprocessing to interactive dashboards.

📝 Problem Statement

Blinkit, a fast-growing online grocery and essentials delivery platform, collects large volumes of sales data across multiple outlets, product categories, and customer segments. However, the raw data contains inconsistencies (e.g., irregular labels, missing values) and lacks structured reporting.

The challenge is to:

Clean and transform the raw sales dataset.

Identify and calculate key performance indicators (KPIs) such as Total Sales, Average Sales, and Number of Orders.

Analyze sales trends by Item Type, Fat Content, Outlet Type, Location, and Establishment Year.

Build interactive dashboards to provide actionable business insights.

The ultimate objective is to support data-driven decision-making by helping management understand sales performance, outlet efficiency, and customer preferences.

⚙️ Approach
1. Data Cleaning & Preparation (SQL, Python)

Standardized inconsistent values (e.g., normalized Item_Fat_Content labels: “LF”, “low fat” → “Low Fat”).

Handled missing/duplicate values for accurate reporting.

Transformed raw data into structured tables for easier analysis.

2. KPI Calculation (SQL)

Computed key metrics:

✅ Total Sales

✅ Average Sales per Item/Outlet

✅ Number of Orders

✅ Sales % contribution by Outlet Type

Created pivot tables for analyzing sales by Fat Content, Item Type, and Outlet Location.

3. Exploratory Data Analysis (Python)

Conducted statistical analysis using Pandas and NumPy.

Created visualizations (Matplotlib & Seaborn) to analyze distributions, correlations, and trends.

Compared performance across item categories and outlet years.

4. Dashboard Development (Excel & Power BI)

Excel Dashboard:

Designed KPI cards, bar charts, and trend lines.

Created a simple, clean layout for static reporting.

Power BI Dashboard:

Developed an interactive dashboard with slicers and filters.

Visualized sales by outlet type, item fat content, location type, and establishment year.

Enabled drill-down analysis for better insights.

5. Business Insights Extraction

Identified top-performing item categories.

Highlighted outlets with higher/lower sales contributions.

Analyzed the relationship between ratings, sales, and visibility.

Provided recommendations for business strategies such as optimizing inventory for high-performing outlets and focusing on profitable item types.

🛠️ Tools & Technologies

SQL (MSSQL) → Data cleaning, transformation, and KPI calculation

Python (Pandas, NumPy, Matplotlib, Seaborn) → Exploratory Data Analysis (EDA)

Excel → Data visualization and dashboard creation

Power BI → Interactive dashboard for deeper business insights

📂 Project Files

capstone_project.sql → SQL queries for data cleaning, KPI extraction, and sales insights

Blinkit Analysis.ipynb → Jupyter Notebook with Python EDA and visualizations

Dashboard.xlsx → Excel dashboard with charts and KPIs

Blinkit analysis Dashboard.pbix → Power BI interactive dashboard

📈 Key Analysis & Insights

Data Cleaning: Standardized values (e.g., fixing inconsistent Item_Fat_Content).

KPIs Calculated:

✅ Total Sales

✅ Average Sales

✅ Number of Orders

✅ Sales % Contribution by Outlet Type

Sales Analysis:

Sales by Item Type, Fat Content, and Outlet Type

Sales distribution across Outlet Locations and Establishment Year

Average ratings and item visibility analysis

Visualizations:

Power BI and Excel dashboards for interactive exploration

Python charts for trends and distributions

📊 Dashboards Preview

Excel Dashboard: Highlights key KPIs and visual trends

Power BI Dashboard: Interactive filters for outlet type, item categories, and sales breakdowns

🚀 How to Use

SQL → Run queries in capstone_project.sql on the dataset (blinkit_data) to replicate KPI calculations.

Python → Open Blinkit Analysis.ipynb to explore data preprocessing, EDA, and visual insights.

Excel → Open Dashboard.xlsx for a static dashboard view.

Power BI → Open Blinkit analysis Dashboard.pbix to interact with live dashboards.

📌 Skills Demonstrated

Data Cleaning & Transformation

SQL Querying & KPI Derivation

Exploratory Data Analysis (EDA) with Python

Dashboard Design (Excel & Power BI)

Business Insights & Storytelling with Data

📜 Conclusion

This project demonstrates the end-to-end workflow of a Data Analyst — from raw data preparation to insightful dashboards — helping businesses identify sales trends, product performance, and outlet growth opportunities.
