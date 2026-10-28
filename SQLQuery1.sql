create table Company(
	CompanyId int primary key identity(1,1),
	CompanyName nvarchar(255) not null
);

create table Passenger(
	PassengerId int primary key identity(1,1),
	PassengerName nvarchar(255) not null
);

create table Planes(
	PlaneId int primary key identity(1,1),
	PlaneName nvarchar(255)
);

create table Cities(
	CityId int primary key identity(1,1),
	CityName nvarchar(255)
);

create table Trip(
	TripId int primary key identity(1,1),
	CompanyId int foreign key references Company(CompanyId) not null,
	PlaneId int foreign key references Planes(PlaneId) not null,
	CityIdFrom int foreign key references Cities(CityId) not null,
	CityIdTo int foreign key references Cities(CityId) not null,
	TimeOut datetime,
	TimeIn datetime
);

create table Pass_in_trip(
	PTId int primary key identity(1,1),
	TripId int foreign key references Trip(TripId) not null,
	Date date,
	PassengerId int foreign key references Passenger(PassengerId) not null,
);


INSERT INTO Company (CompanyName) VALUES 
('Aeroflot'),
('S7 Airlines'),
('Air France'),
('Lufthansa'),
('Emirates'),
('British Airways');


INSERT INTO Passenger (PassengerName) VALUES 
('John Newman'),
('Alexander Freedman'),
('Ivan Ivanov'),
('Anna Petrova'),
('Marie Dupont'),
('David Smith'),
('Gary Coleman');


INSERT INTO Planes (PlaneName) VALUES 
('TU-134'),
('Boeing 737'),
('Boeing 777'),
('Airbus A320'),
('Sukhoi Superjet 100');


INSERT INTO Cities (CityName) VALUES 
('Moscow'),
('Paris'),
('London'),
('New York'),
('Berlin'),
('Tokyo');


INSERT INTO Trip (CompanyId, PlaneId, CityIdFrom, CityIdTo, TimeOut, TimeIn) VALUES 
(1, 1, 1, 2, '2026-10-20 09:00:00', '2026-10-20 12:45:00'), -- Из Москвы (1) в Париж (2), компания 1, самолет TU-134 (1)
(2, 2, 1, 3, '2026-10-21 14:15:00', '2026-10-21 17:30:00'), -- Из Москвы (1) в Лондон (3), компания 2, самолет Boeing 737 (2)
(3, 4, 2, 1, '2026-10-22 10:00:00', '2026-10-22 14:40:00'), -- Из Парижа (2) в Москву (1), компания 3, самолет Airbus (4)
(4, 3, 2, 5, '2026-10-23 18:20:00', '2026-10-23 20:05:00'), -- Из Парижа (2) в Берлин (5), компания 4, самолет Boeing 777 (3)
(5, 2, 3, 1, '2026-10-24 11:00:00', '2026-10-24 15:15:00'), -- Из Лондона (3) в Москву (1), компания 5, самолет Boeing 737 (2)
(1, 1, 1, 6, '2026-10-25 21:00:00', '2026-10-26 06:30:00'), -- Из Москвы (1) в Токио (6), компания 1, самолет TU-134 (1)
(6, 3, 3, 4, '2026-10-26 08:00:00', '2026-10-26 16:20:00'); -- Из Лондона (3) в Нью-Йорк (4), компания 6, самолет Boeing 777 (3)


INSERT INTO Pass_in_trip (TripId, Date, PassengerId) VALUES 
(1, '2026-10-20', 1), -- John Newman летит рейсом 1
(1, '2026-10-20', 3), -- Ivan Ivanov летит рейсом 1
(2, '2026-10-21', 1), -- John Newman летит рейсом 2
(2, '2026-10-21', 2), -- Alexander Freedman летит рейсом 2
(3, '2026-10-22', 4), -- Anna Petrova летит рейсом 3
(4, '2026-10-23', 5), -- Marie Dupont летит рейсом 4
(5, '2026-10-24', 1), -- John Newman летит рейсом 5
(5, '2026-10-24', 6), -- David Smith летит рейсом 5
(6, '2026-10-25', 2); -- Alexander Freedman летит рейсом 6