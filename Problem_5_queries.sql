SELECT
    Region,
    SUM(Units_Sold * Unit_Price) AS Revenue
FROM supply_chain_dataset1
GROUP BY Region
ORDER BY Revenue DESC;

SELECT
    Warehouse_ID,
    SUM(Units_Sold * (Unit_Price - Unit_Cost)) AS Profit
FROM supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY Profit DESC;

SELECT
    SKU_ID,
    SUM(Units_Sold * (Unit_Price - Unit_Cost)) AS Profit
FROM supply_chain_dataset1
GROUP BY SKU_ID
ORDER BY Profit DESC
LIMIT 10;

SELECT
    SKU_ID,
    AVG(Unit_Price - Unit_Cost) AS Profit_Per_Unit
FROM supply_chain_dataset1
GROUP BY SKU_ID
ORDER BY Profit_Per_Unit DESC;

SELECT
    Warehouse_ID,
    SUM(Units_Sold * Unit_Price) AS Revenue
FROM supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY Revenue DESC;