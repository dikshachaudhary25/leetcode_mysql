select p.product_id, ifnull(round(CASE WHEN SUM(u.units) > 0 THEN SUM(u.units * p.price) / SUM(u.units) ELSE 0 END, 2), 0) as average_price  from Prices p left join UnitsSold u on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date group by p.product_id;