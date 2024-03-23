SELECT s.ServiceName AS "Название сервиса",
       v.VersionID AS "Идентификатор версии",
       COUNT(cr.ChangeRequestID) AS "Количество требований на изменения"
FROM Services s
JOIN Versions v ON s.ServiceID = v.ServiceID
LEFT JOIN Requirements r ON v.VersionID = r.VersionID
LEFT JOIN ChangeRequests cr ON r.RequirementID = cr.RequirementID
WHERE v.ReleaseDate BETWEEN '2023-01-01' AND '2024-01-31'
AND cr.Status = "Approved"
GROUP BY s.ServiceName, v.VersionID;
