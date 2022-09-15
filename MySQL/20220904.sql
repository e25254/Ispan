--新增檢視表
CREATE VIEW details_view AS
SELECT od.* , p.bookname
FROM `order_details` od
JOIN  `products` p
ON  od.product_sid = p.sid


