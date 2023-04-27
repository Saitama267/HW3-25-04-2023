SELECT an_name, an_price, ord_datetime
FROM Analysis
JOIN Orders
ON Analysis.an_id = Orders.ord_an
AND Orders.ord_datetime >= '2020-02-05'
AND Orders.ord_datetime < '2020-02-13';