use supply_chain;

SELECT 
    Warehouse_ID, SUM(Units_Sold) AS total_units_sold
FROM
    supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY total_units_sold DESC;

SELECT 
    Warehouse_ID, SUM(Inventory_Level) AS total_inventory
FROM
    supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY total_inventory DESC;

SELECT 
    Warehouse_ID, SUM(Order_Quantity) AS Total_Order_Quantity
FROM
    supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY Total_Order_Quantity DESC;

SELECT 
    Warehouse_ID, AVG(Inventory_Level) AS Avg_Inventory
FROM
    supply_chain_dataset1
GROUP BY Warehouse_ID
ORDER BY Avg_Inventory DESC;

SELECT 
    Region, SUM(Units_Sold) AS Total_Units_Sold
FROM
    supply_chain_dataset1
GROUP BY Region
ORDER BY Total_Units_Sold DESC;
