Create table Students(
id int Primary key identity not null,
Fullname nvarchar (40) not null,
Email nvarchar (80),
group_id int References Groups(id)
)
Create table Groups(
id int Primary key identity not null,
Name nvarchar (40))

Select * from Students
where group_id=1

Select Students.Fullname,Students.Email from Students
where group_id=1

Select * from Students
JOIN Groups
on Students.group_id=Groups.id

Select st.Fullname,st.Email,gt.Name
from Students st
JOIN Groups gt
on st.group_id=gt.id

where gt.Name='k2'

Create table Teachers(
id int primary key identity not null,
Fullname nvarchar(40))

alter table Groups
drop Constraint FK__Groups__teacher___3C69FB99

alter table Groups
Add teacherid int References Teachers(id)

Select st.Fullname,st.Email,gt.Name,ts.Fullname
from Students st
JOIN Groups gt 
on st.group_id=gt.id
Join Teachers ts
On gt.teacherid=ts.id
