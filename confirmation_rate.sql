SELECT 
    u.user_id,
    ROUND(SUM(CASE WHEN e.action = 'confirmed' THEN 1 ELSE 0 END)  / 
          CASE WHEN COUNT(e.action) = 0 THEN 1 ELSE COUNT(e.action) END, 2) AS confirmation_rate
FROM Signups u
LEFT JOIN Confirmations e 
ON u.user_id = e.user_id
GROUP BY u.user_id order by u.user_id;
