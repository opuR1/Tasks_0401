Select cm.CompanyName
From Company cm
join Trip t ON t.CompanyId = cm.CompanyId
join Planes p ON p.PlaneId = t.PlaneId
where p.PlaneName LIKE N'%Boeing%'