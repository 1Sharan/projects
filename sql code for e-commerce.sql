create table assingments;
SELECT * from assingments
    CASE 
        WHEN EXTRACT(DOW FROM order_purchase_timestamp) IN (0, 6) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    COUNT(*) AS total_orders,
    SUM(payment_value) AS total_payment,
    AVG(payment_value) AS average_payment
FROM 
    orders
GROUP BY 
    day_type;
