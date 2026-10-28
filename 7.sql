SELECT p.PlaneName
FROM Planes p
JOIN Trip t ON t.PlaneId = p.PlaneId
JOIN Cities c ON c.CityId = t.CityIdTo
WHERE c.CityName = N'Moscow'