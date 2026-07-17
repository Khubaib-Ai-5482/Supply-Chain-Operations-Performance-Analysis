use supply_chain;

SELECT
    Region,
    SUM(Units_Sold) AS Total_Units_Sold
FROM supply_chain_dataset1
GROUP BY Region
ORDER BY Total_Units_Sold DESC;

SELECT
    Region,
    SUM(Demand_Forecast) AS Total_Demand_Forecast
FROM supply_chain_dataset1
GROUP BY Region
ORDER BY Total_Demand_Forecast DESC;

SELECT
    SKU_ID,
    SUM(Units_Sold) AS Actual_Sales,
    SUM(Demand_Forecast) AS Forecast_Demand
FROM supply_chain_dataset1
GROUP BY SKU_ID;

SELECT
    Promotion_Flag,
    AVG(Units_Sold) AS Avg_Units_Sold
FROM supply_chain_dataset1
GROUP BY Promotion_Flag;

SELECT
    SKU_ID,
    SUM(Demand_Forecast) AS Forecast_Demand
FROM supply_chain_dataset1
GROUP BY SKU_ID
ORDER BY Forecast_Demand DESC
LIMIT 10;