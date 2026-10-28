SELECT p.PassengerName, COUNT(pt.PassengerId) as "FlyCounts"
From Pass_in_trip pt
JOIN Passenger p ON pt.PassengerId = p.PassengerId
Group by p.PassengerName
ORDER BY FlyCounts DESC, p.PassengerName ASC;