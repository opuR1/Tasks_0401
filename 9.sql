Select t.TripId, COUNT(pt.PassengerId) as "Кол-во пассажиров"
FROM Trip t
JOIN Pass_in_trip pt ON pt.TripId = t.TripId
JOIN Passenger p ON pt.PassengerId = p.PassengerId
GROUP BY t.TripId