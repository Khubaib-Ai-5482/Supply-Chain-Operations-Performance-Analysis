use supply_chain;

SELECT 
    Supplier_ID,
    AVG(Supplier_Lead_Time_Days) AS avg_supplier_time
FROM
    supply_chain_dataset1
GROUP BY Supplier_ID;

SELECT 
    Supplier_ID,
    AVG(Supplier_Lead_Time_Days) AS slowest_supplier
FROM
    supply_chain_dataset1
GROUP BY Supplier_ID
ORDER BY slowest_supplier desc
limit 5;

SELECT 
    Supplier_ID,
    AVG(Supplier_Lead_Time_Days) AS fastest_supplier
FROM
    supply_chain_dataset1
GROUP BY Supplier_ID
ORDER BY fastest_supplier asc
limit 5;

SELECT 
    Supplier_ID , SUM(Order_Quantity) AS total_orders
FROM
    supply_chain_dataset1
GROUP BY Supplier_ID
order by total_orders desc;

SELECT
    Supplier_ID,
    COUNT(DISTINCT SKU_ID) AS Products_Supplied
FROM supply_chain_dataset1
GROUP BY Supplier_ID
ORDER BY Products_Supplied DESC;