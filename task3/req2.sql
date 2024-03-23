SELECT system.sysem_name, COUNT(*) AS call_count 

FROM calls 

JOIN system ON calls.system_id = system.system_id 

WHERE call_datetime BETWEEN '2022-01-01' AND '2022-03-01' 

GROUP BY system.sysem_name 

ORDER BY call_count DESC 

LIMIT 3; 