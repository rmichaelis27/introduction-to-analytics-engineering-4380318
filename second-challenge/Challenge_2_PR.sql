create view product_perf as
    select
        p.Product_Id as Product_ID
        , p.ProductName as Product_Name
        , p.Category as Product_Category
        , p.Price as Product_Price
        , sum(o.Quantity) as Total_Product_Sold
        , count(o.Order_Id) as Total_Product_Orders
        , distinct count(c.State) as States_Per_Order

from products p
join orders o, customers c
    on o.product_id = p.product_id,
    on c.cust_id = p.cust_id
