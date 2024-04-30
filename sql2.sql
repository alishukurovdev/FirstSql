--USE Ab106Practise
CREATE TABLE Categories (
    Id int IDENTITY PRIMARY KEY,
	Name nVarchar(26) NOT NULL
)


CREATE TABLE Products (
    Id int IDENTITY PRIMARY KEY,
    Name nVarchar(26) NOT NULL,
    Price Decimal,
    Stock int,
    CategoryId INT,
    CONSTRAINT FK_Categories FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
)

--drop table Products

select * from Categories
select * from Products

delete Products where id=1

Insert into Products(Name,Price,Stock,CategoryId)
values('dobleBurger', 7 , 2 , 1 ),
('kentKartof', 3 , 5 , 2 ),
('ExtraFries', 4 , 3 , 2 ),
('tea', 1 , 2 , 4 ),
('cola', 3 , 3 , 3 )

SELECT * FROM Products as p 
left JOIN Categories as c
ON p.CategoryId=c.Id

SELECT * FROM Products as p 
JOIN Categories as c
ON p.CategoryId=c.Id


SELECT * FROM Products as p 
full outer join Categories as c
ON p.CategoryId=c.Id

CREATE TABLE Size (
    Id int IDENTITY PRIMARY KEY,
	Name nVarchar(26) NOT NULL
)

CREATE TABLE ProductSize (
  Id int IDENTITY PRIMARY KEY,
      ProductId INT CONSTRAINT FK_Product FOREIGN KEY REFERENCES Products(Id),
	        SizeId INT CONSTRAINT FK_Size FOREIGN KEY REFERENCES Size(Id)

)


SELECT * FROM Products as p 
Left Join ProductSize as pc 
on p.CategoryId=pc.Id
left join Size as s
on s.Id=pc.Id