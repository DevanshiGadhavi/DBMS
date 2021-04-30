create table Dept(Dept_Id int primary key,Dept_name varchar(30),Dept_location varchar(50));

insert into Dept(Dept_Id,Dept_name,Dept_location) value(101,'Compute Department','GVP');

insert into Dept(Dept_Id,Dept_name,Dept_location) value(102,'Arts Department','GVP');

insert into Dept(Dept_Id,Dept_name,Dept_location) value(103,'Commerce Department','GVP');

select *from Dept;