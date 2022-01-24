create database ElectrooStore

use ElectrooStore

create table Brandss
	(Id int primary key identity,
	Name nvarchar(20)
	)

create table NoteBookk
	(Id int primary key identity,
	Name nvarchar(20),
	Pricee int
	)

	create table Phonee
	(Id int primary key identity,
	Name nvarchar(20),
	Pricee int
	)

alter table NoteBookk
add BrandId int constraint CK_BI references Brandss(Id)


alter table Phonee
add BrandId int constraint PH_BI references Brandss(Id)

select n.Name,b.Name 'BrandName' from NoteBookk n
join Brandss b
On b.Id=n.BrandId

select p.Name,b.Name 'BrandName' from Phonee p
join Brandss b
On b.Id=p.BrandId

select n.Name,b.Name from NoteBookk n
join Brandss b
On b.Id=n.BrandId
where b.Name like '%s%'

select n.Name , n.Pricee from NoteBookk n
where n.Pricee>2000 or n.Pricee<5000 or n.Pricee>5000

select p.Name , p.Pricee from Phonee p
where p.Pricee>1000 or p.Pricee<1500 or p.Pricee>1500

select b.Name,count(n.BrandId) 'NumberOfNoteBook' from Brandss b
join NoteBookk n
On b.Id=n.BrandId
group by b.Name

select b.Name,count(p.BrandId) 'NumberOfPhone' from Brandss b
join Phonee p
On p.Id=p.BrandId
group by b.Name

select n.Name,n.BrandId from NoteBookk n
intersect
select p.Name,p.BrandId from Phonee p

select n.Id, n.Name,n.Pricee, n.BrandId from NoteBookk n
union all
select p.Id,p.Name,p.Pricee,p.BrandId from Phonee 

select p.Id,p.Name,p.Pricee,n.Id,n.Name,n.Pricee,b.Name 'BrandName' from Brandss b
join Phonee p
On p.BrandId=b.Id
join Phonee n
On n.BrandId=b.Id

select p.Id,p.Name,p.Pricee,n.Id,n.Name,n.Pricee,b.Name 'BrandName' from Brandss b
join Phonee p
On p.BrandId=b.Id
join Phonee n
On n.BrandId=b.Id
where p.Pricee>1000 or n.Pricee>1000

select  b.Name 'BrandName',sum(p.Pricee) 'TotalPrice',count (p.Name) 'TotalCount' from Brandss b
join Phonee p
On b.Id=p.BrandId
group by b.Name

select b.Name 'BrandName' ,sum(n.Pricee) 'TotalPrice',count(n.Name)'TotalCount' from Brandss b
join NoteBookk n
On b.Id=n.BrandId
group by b.Name
having count(n.Name)>3





