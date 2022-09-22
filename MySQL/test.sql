--多顯示一行是 價格＊數量

SELECT `sid`,`order_sid`,`product_sid`,`price`,`quantity`,`price`*`quantity`
FROM `order_details`

--顯示 order_sid 為 11的價格＊數量

SELECT `sid`,`order_sid`,`product_sid`,`price`,`quantity`,`price`*`quantity`
FROM `order_details`
WHERE `order_sid` = 11

--顯示把所有 order_sid 為 11的價格＊數量相加的值

SELECT sum(`price`*`quantity`)
FROM `order_details`
WHERE `order_sid` = 11

--顯示總共有幾筆資料 （count括弧內可以放任意數值）

SELECT COUNT(1)
FROM`order_details`

--查詢 編號一的會員所訂的所有產品名稱跟編號

SELECT p.sid , p.bookname
FROM `orders` o
JOIN `order_details` od
ON o.sid = od.order_sid
JOIN `products` p 
ON od.product_sid = p.sid
WHERE o.member_sid = 1
-- 分類裡面沒有商品

SELECT * 
FROM `categories` c
left JOIN `products` p
ON p.category_sid = c.sid
WHERE p.category_sid is NULL


-- 關鍵字搜尋 like（ ％ ＝ 任意字元 ）

SELECT *
FROM `products`
WHERE `author` like '%陳%'

--時間

SELECT *
FROM `orders`
WHERE `order_date` > '2016-01-01' and `order_date` <='2017-12-31'








SELECT * 
    FROM hotel 
    JOIN `area` 
    ON `hotel`.`area_sid` = `area`.`area_sid` 
    JOIN `city`
    ON `area`.`city_sid` = `city`.`city_sid`
    JOIN `hotel_categories`
    ON `hotel`.`categories_sid` = `hotel_categories`.`hotel_categories_sid`
    ORDER BY SID





SELECT * 
    FROM `hotel` 
    WHERE `sid` like '%新北%'
    OR `area_sid` LIKE '%新北%'
    OR `hotel_name` LIKE '%新北%'
    OR `hotel_code` LIKE '%新北%'
    OR `phone` LIKE '%新北%'
    OR `address` LIKE '%新北%'
    OR `picture` LIKE '%新北%'
    OR `wifi` LIKE '%新北%'
    OR `breakfast` LIKE '%新北%'
    OR `lunch` LIKE '%新北%'
    OR `dinner` LIKE '%新北%'
    OR `check_in` LIKE '%新北%'
    OR `check_out` LIKE '%新北%'
    OR `facility` LIKE '%新北%'
    OR `tag` LIKE '%新北%'



SELECT * 
    FROM hotel 
    JOIN `area` 
    ON `hotel`.`area_sid` = `area`.`area_sid` 
    JOIN `city`
    ON `area`.`city_sid` = `city`.`city_sid`
    JOIN `hotel_categories`
    ON `hotel`.`categories_sid` = `hotel_categories`.`hotel_categories_sid`
    ORDER BY SID

SELECT * 
    FROM `hotel` 
    JOIN `area` 
    ON `hotel`.`area_sid` = `area`.`area_sid` 
    JOIN `city`
    ON `area`.`city_sid` = `city`.`city_sid`
    JOIN `hotel_categories`
    ON `hotel`.`categories_sid` = `hotel_categories`.`hotel_categories_sid`
WHERE 
    `sid` like '%新北%'
    or `city`.`city_name` LIKE '%新北%'
    OR `area`.`area_name` LIKE '%新北%'
    OR `hotel_name` LIKE '%新北%'
    OR `hotel_code` LIKE '%新北%'
    OR `phone` LIKE '%新北%'
    OR `address` LIKE '%新北%'
    OR `picture` LIKE '%新北%'
    OR `wifi` LIKE '%新北%'
    OR `breakfast` LIKE '%新北%'
    OR `lunch` LIKE '%新北%'
    OR `dinner` LIKE '%新北%'
    OR `check_in` LIKE '%新北%'
    OR `check_out` LIKE '%新北%'
    OR `facility` LIKE '%新北%'
    OR `tag` LIKE '%新北%'
    ORDER BY SID
    

