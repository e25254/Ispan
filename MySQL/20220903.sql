--多顯示一行是 價格＊數量
SELECT                                                                                      
    `sid`,`order_sid`,`product_sid`,`price`,`quantity`,`price`*`quantity`
FROM
    `order_details`;



--顯示 order_sid 為 11的價格＊數量
SELECT                                                                  
    `sid`,`order_sid`,`product_sid`,`price`,`quantity`,`price`*`quantity`
FROM
    `order_details`
WHERE
    `order_sid` = 11 ;



--顯示把所有 order_sid 為 11的價格＊數量相加的值
SELECT
    SUM(`price`*`quantity`)
FROM
    `order_details`
WHERE
    `order_sid` = 11 ;



--顯示總共有幾筆資料 （count括弧內可以放任意數值）
SELECT 
    COUNT(1) FROM `products`



--合併查詢
SELECT *
FROM `products` 
JOIN `categories`
ON `products`.`category_sid` = `categories`.`sid`;



SELECT `products`.* , `categories`.`name`
FROM `products`
JOIN `categories`
ON `products`.`category_sid` = `categories`.`sid`;



SELECT p.* , c.`name` 
FROM `products` p
JOIN `categories` c
ON p.`category_sid` = c.`sid`;



SELECT p.* , c.`name` 
FROM `products` p
LEFT JOIN `categories` c
ON p.`category_sid` = c.`sid`;


--查詢 編號一的會員所訂的所有產品名稱跟編號
SELECT od.product_sid , p.bookname
FROM `orders` o
JOIN `order_details` od
ON o.sid = od.order_sid
JOIN `products` p 
on p.sid = od.product_sid
WHERE o.`member_sid` = 1
ORDER BY od.product_sid;



-- 商品沒有對應到分類
SELECT p.* , c.`name`
FROM `products` p 
LEFT JOIN `categories` c 
ON p.`category_sid` =c.`sid`
WHERE c.`name` IS NULL;



-- 分類沒有對應到商品
SELECT c.`name` , p.*
FROM `categories` c
LEFT JOIN `products` p 
ON c.`sid` = p.`category_sid`
WHERE p.`category_sid` IS NULL



-- 關鍵字搜尋 like（ ％ ＝ 任意字元 ）
SELECT *
FROM `products`
WHERE `author` like '%陳%' or `bookname` like '%陳%' 



-- 欄列搜尋 in 預設升冪
SELECT *
FROM `products`
WHERE sid IN( 6 , 2 ,3); 



--欄列搜尋 in 降冪
SELECT *
FROM `products`
WHERE sid IN( 6 , 2 ,3)
ORDER BY `sid` DESC;



--各分類的數量（GROUP BY）
SELECT category_sid , COUNT(1) num
FROM `products`
GROUP BY `category_sid`;



SELECT category_sid , COUNT(1) num , c.name
FROM `products` p 
JOIN `categories` c 
ON p.`category_sid` = c.sid
GROUP BY `category_sid`;



--時間
SELECT *
FROM `orders` 
WHERE `order_date` >'2016-03-01' and `order_date` <= '2017-03-01'



--累加
UPDATE `products` SET `price` = `price`+1;