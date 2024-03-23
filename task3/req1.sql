SELECT 

  strftime('%w', call_datetime) AS day_of_week, 

  theme.theme_name AS call_type, 

  COUNT(*) AS call_count 

FROM calls 

JOIN theme ON calls.theme_id = theme.theme_id 

WHERE call_datetime >= '2022-01-01' AND call_datetime < '2022-03-01' 

GROUP BY day_of_week, call_type 

ORDER BY day_of_week, call_type 