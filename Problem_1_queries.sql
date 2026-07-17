USE supply_chain;

SELECT
    Warehouse_ID,
    COUNT(*) AS Low_Stock_Products
FROM supply_chain_dataset1
WHERE Inventory_Level < Reorder_Point
GROUP BY Warehouse_ID
ORDER BY Low_Stock_Products DESC;

SELECT 
       Warehouse_ID,
       count(*) as low_stock_product
FROM supply_chain_dataset1
WHERE Inventory_Level > (Reorder_Point * 2)
GROUP BY Warehouse_ID;

SELECT Region,
       COUNT(*) AS Low_Stock_Products_region_wise
FROM supply_chain_dataset1
WHERE Inventory_Level < Reorder_Point
GROUP BY Region
ORDER BY Low_Stock_Products_region_wise DESC;

SELECT
    SKU_ID,
    Warehouse_ID,
    Inventory_Level,
    Reorder_Point
FROM supply_chain_dataset1
WHERE Inventory_Level > (Reorder_Point * 2)
ORDER BY Inventory_Level DESC
LIMIT 10;

