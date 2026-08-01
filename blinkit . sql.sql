SELECT * FROM blankit.blinkit_data;

describe blinkit_data;



select count(*) from blinkit_data;
SET SQL_SAFE_UPDATES = 0;

UPDATE blinkit_data
SET Item_Fat_Content = 'Low Fat'
WHERE Item_Fat_Content IN ('low', 'low fat', 'LF');

UPDATE blinkit_data
SET Item_Fat_Content = 'Regular'
WHERE Item_Fat_Content IN ('reg', 'REG');


select distinct Item_fat_Content from blinkit_data;

SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS `Total Sales Million`
FROM blinkit_data
WHERE Outlet_Establishment_Year = 2022;


SELECT CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS avg_sales
FROM blinkit_data
WHERE Outlet_Establishment_Year = 2022;

select count(*) as NO_of_Orders
from Blinkit_data
WHERE Outlet_Establishment_Year = 2022;

select cast(avg(Rating) as decimal(10,2)) as Avg_Rating
from blinkit_data;



SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(avg(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
count(*) as  NO_of_Iteam,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Ave_Rating
FROM blinkit_data
GROUP BY Item_Type
order by Total_Sales desc;
SELECT
    `Outlet_Location_Type`,
    SUM(CASE WHEN `Item_Fat_Content` = 'Low Fat' THEN `Total_Sales` ELSE 0 END) AS Low_Fat,
    SUM(CASE WHEN `Item_Fat_Content` = 'Regular' THEN `Total_Sales` ELSE 0 END) AS Regular
FROM blinkit_data
GROUP BY `Outlet_Location_Type`
ORDER BY `Outlet_Location_Type`;
USE blankit;

SELECT
    `Outlet_Location_Type`,
    ROUND(SUM(CASE WHEN `Item_Fat_Content` = 'Low Fat' THEN `Total_Sales` ELSE 0 END), 2) AS Low_Fat,
    ROUND(SUM(CASE WHEN `Item_Fat_Content` = 'Regular' THEN `Total_Sales` ELSE 0 END), 2) AS Regular
FROM blinkit_data
GROUP BY `Outlet_Location_Type`
ORDER BY `Outlet_Location_Type`;

select Outlet_Establishment_Year,
cast(sum(Total_Sales) as decimal (10,2)) as Total_Sales,
cast(avg(Total_Sales) as decimal (10,2)) as avg_Sales,
cast(avg(Rating) as decimal (10,2)) as AVG_Rating,
 count(*) as no_of_Items
from blinkit_data
group by Outlet_Establishment_Year
order by Total_Sales desc;

select Outlet_Establishment_Year,
cast(sum(Total_Sales) as decimal(10,2)) as  Total_Sales
from blinkit_data
group by Outlet_Establishment_Year
order by Outlet_Establishment_Year;

select  Outlet_Size,

cast(sum(Total_Sales) as decimal(10,2))  as Total_sales,
cast(sum(Total_Sales)* 100.0/sum(sum(Total_Sales)) over() as decimal(10,2)) as sales_percentege
from blinkit_data
group by Outlet_Size
order by Outlet_Size desc;

select Outlet_Location_Type,
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales
from blinkit_data
group by Outlet_Location_Type
order by Outlet_Location_Type desc;

select Outlet_Type,
cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
cast(avg(Total_Sales) as decimal(10,0)) as AVG_Sales,
count(*) as No_Of_Item,
cast(avg(Rating) as decimal(10,2)) as Avg_Rating,
cast(avg(Item_Visibility) as decimal(10,2)) as Item_Visibility
from blinkit_data
group by Outlet_Type
order by Outlet_Type desc;
 
 













describe blinkit_data;


