SELECT s.ServiceName AS "Название сервиса",
       v.VersionID AS "Идентификатор версии",
       SUM(ws.HoursSpent) AS "Общее время затраченное на версию"
FROM Services s
JOIN Versions v ON s.ServiceID = v.ServiceID
JOIN WorkStages ws ON v.VersionID = ws.VersionID
WHERE s.ServiceID = 1
GROUP BY s.ServiceName, v.VersionID
ORDER BY SUM(ws.HoursSpent) DESC
LIMIT 3;
