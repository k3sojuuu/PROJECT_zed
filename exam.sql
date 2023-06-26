create database Examm

create table Locationn (
LocationID char(6) primary key,
l_name nvarchar(50) not null,
l_description nvarchar(100)
);

create table land(
landID int primary key identity,
title nvarchar(100) not null,
LocationID char(6),
Detail nvarchar(1000),
StarDate datetime not null,
EndDate datetime not null,
 foreign key (LocationID) references Locationn(LocationID)
);

create table building(
BuildingID int primary key identity,
landID int,
BuildingType nvarchar(50),
area int default 50,
floors int default 1,
rooms int default 1,
cost money,
 foreign key (landID) references land(landID));
 

 --3.
 insert into Locationn values ('880000','An Giang','An Giang province'),
                              ('260000','Bac Lieu','Bac Lieu proince'),
							  ('960000','Bac Kan','Bac Kan province')
insert into land values ('Chau Doc','880000',null,'2023-01-23 00:00:00','2023-09-23 00:00:00'),
insert into land values ('Tp Bac Lieu','260000',null,'2023-02-23 00:00:00','2023-10-23 00:00:00'),
                          ('Ba Be','960000',null,'2023-03-23 00:00:00','2023-11-23 00:00:00')
insert into building values (1,'office',100,3,6,1000)
insert into building values (2,'home',50,3,3,400)
insert into building values (3,'villa',120,3,7,1500)


--cau 4
select * from building where area >= 100
--cau 6
select b.* from building b join land d on b.landID = d.landID where title = 'My Dinh'
--cau7
create view v_Building
as
select BuildingID,title,l_name,BuildingType,area,floors 
from building b 
join land l on b.landID = l.landID
join Locationn n on n.LocationID=l.LocationID