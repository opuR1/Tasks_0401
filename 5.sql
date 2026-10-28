Select COUNT(t.TripId) as "Кол-во полетов на Ту134"
From Trip t
JOIN Planes p ON p.PlaneId = t.PlaneId
Where p.PlaneName = N'TU-134'