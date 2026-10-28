SELECT ct.CityName, DATEDIFF(minute, TimeOut, TimeIn) as "Время полета(минут)"
From Cities c
JOIN Trip t ON t.CityIdFrom = c.CityId
JOIN Cities ct ON ct.CityId = t.CityIdTo
Where c.CityName = N'Paris'