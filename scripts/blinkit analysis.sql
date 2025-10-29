select *  from blinkit_data

--IRREGULAR PATTERN
UPDATE blinkit_data
SET Item_Fat_Content = 
    CASE 
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
END
  
/*KPI’s*/
--TOTAL SALES

SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM blinkit_data

--AVERAGE SALES

SELECT CAST(AVG(Total_Sales) AS INT) AS Avg_Sales
FROM blinkit_data 

--NO OF ITEMS

SELECT COUNT(*) AS No_of_Orders
FROM blinkit_data

--Total Sales by Fat Content

SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content


--Total Sales by Item Type

SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC

--METRIC 
select * from blinkit_data

select Item_Type,
       CAST(SUM(Total_sales)/1000 as decimal(10,2)) as total_sales_Thousands,
	   CAST(AVG(Total_sales) as int) as total_sales,
	   COUNT(*) as no_of_items,
	   CAST(AVG(Rating) as decimal(10,2)) as avg_rating 
from blinkit_data
group by Item_Type
order by total_sales_Thousands desc

SELECT * FROM blinkit_data

--FAT CONTENT BY OUTLET FOR SALES
SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    SUM(Total_Sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type


select * from blinkit_data

select outlet_establishment_year,
       cast(sum(total_sales) as decimal(10,2)) as total_sales,
	   CAST(AVG(Total_sales) as int) as total_sales,
	   COUNT(*) as no_of_items,
	   CAST(AVG(Rating) as decimal(10,2)) as avg_rating 

from blinkit_data
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year

--Percentage of Sales by Outlet Size

select * from blinkit_data

select outlet_type,
       cast(sum(total_sales) as decimal(10,2)) as total_sum_amount,
       cast((sum(total_sales)*100 / sum(sum(total_sales)) over()) as decimal(10,2)) as sales_percentage
	   from blinkit_data
	   group by Outlet_Type
	   order by total_sum_amount desc


--Sales by Outlet Location

select * from blinkit_data

select outlet_location_type,
       cast(sum(total_sales) as decimal(10,2)) as total_sales_amount
	   from blinkit_data
	   group by Outlet_Location_Type 
	   order by total_sales_amount desc

--All Metrics by Outlet Type
select outlet_type,
       cast(sum(total_sales) as decimal(10,2)) as total_sales_amount,
	   CAST(AVG(Total_sales) as int) as total_sales,
	   COUNT(*) as no_of_items,
	   CAST(AVG(Rating) as decimal(10,2)) as avg_rating, 
	   cast(avg(Item_Visibility) as decimal(10,2)) as item_visiblity
from blinkit_data
group by Outlet_Type 
order by total_sales_amount desc





       












