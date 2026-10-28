select t.TripId, cm.CompanyName, p.PlaneName, ctf.CityName, ctt.CityName, t.TimeOut, t.TimeIn
from Trip t
JOIN Cities ctf ON ctf.CityId = t.CityIdFrom
JOIN Company cm ON cm.CompanyId = t.CompanyId
JOIN Planes p ON p.PlaneId = t.PlaneId
JOIN Cities ctt ON ctt.CityId = t.CityIdTo
Where ctf.CityName = N'Moscow'