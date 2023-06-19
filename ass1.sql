create database Assign1;

create schema sales;

create table sales.customer(
cus_name varchar(30),
cus_adress varchar(50),
cus_nphone varchar(10) primary key
);


create table sales.orders(
ord_id int primary key not null,
ord_date date not null,
cus_nphone varchar(10),
constraint o foreign key (cus_nphone) references sales.customer(cus_nphone)
);
create schema production;
create table production.product(
pro_id int primary key identity not null,
pro_name varchar(30) not null,
pro_desc varchar(30) not null,
pro_unit varchar(10) not null,
pro_price money not null
);
create table sales.oders_detail(
quantity int not null,
pro_id int not null,
ord_id int not null,
primary key(pro_id,ord_id),
constraint od foreign key (pro_id) references production.product(pro_id),
constraint os foreign key (ord_id) references sales.orders(ord_id)
);

--cau 3:

insert into sales.customer(cus_name,cus_adress,cus_nphone)
values ('Nguyen Van An','111 Nguyen Trai,Thanh Xuan,Ha Noi',987654321),
      ('Nguyen Tan','Duy Tien,Ha Nam',123456789)
       

insert into sales.orders(ord_id,ord_date,cus_nphone)
values (123,'11/18/09',987654321),(345,'09/26/09',123456789)

insert into production.product(pro_name,pro_desc,pro_unit,pro_price)
values ('Máy tính T450','Máy nhập mới','Chiec',1000)

insert into production.product(pro_name,pro_desc,pro_unit,pro_price)
values('Điện thoại Nokia5670','Điện thoại đang hot','Chiec',200),
('Máy in Samsung 450','Máy in đang ế','Chiec',100)

insert into sales.oders_detail(pro_id,ord_id,quantity)
values(1,123,1),
(2,123,2),
(3,123,1)

--cau 4:
select cus_name from sales.customer
select pro_name from production.product
select * from sales.orders

--cau 5:
select cus_name from sales.customer order by cus_name desc;
select pro_name,pro_price from production.product order by pro_price desc;
select 
pro_name
from production.product 

-- cau 8:
create view view_KhachHang
as
select
cus_name,cus_adress,cus_nphone
from sales.customer

select * from view_KhachHang
------
create view View_sanPham
as
select
pro_name,pro_price from production.product
select * from View_sanPham
------
create view View_KhachHang_SanPham
as 
select 
cus_name,
--cus_nphone,
pro_name,
quantity,
ord_date
from sales.oders_detail od
inner join production.product p on od.pro_id = p.pro_id
inner join sales.orders ord on ord.ord_id = od.ord_id
inner join sales.customer c on ord.cus_nphone = c.cus_nphone
select * from View_KhachHang_SanPham
------
create proc SP_TimKH_MaKh(@c_id as int)
as
begin
select cus_name,cus_adress from sales.customer where cus_nphone = @c_id
end
exec SP_TimKH_MaKh 123456789
------


create proc searchCusByOId(@oid int) as
select cus_name,c.cus_phone 
from sales.customer c 
join sales.orders o on o.cus_phone=c.cus_phone 
where order_id=@oid
exec searchCusByOId 123