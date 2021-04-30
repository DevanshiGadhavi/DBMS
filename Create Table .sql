CREATE TABLE s(sno char(3)primary key,sname varchar(50) not null,s_status int not null,s_city varchar
(25)not null);


CREATE TABLE p(pno char(3) primary key, pname varchar(50) not null,color varchar(30) not null,weight 
double not null,p_city varchar(30) not null);


CREATE TABLE sp(sno char(3) not null, pno char(3)not null,qty int(3) not null,primary key(sno,pno),
foreign key(sno) references s(sno),foreign key(pno)references p(pno));