->insert data in s table:-


insert into s(sno,sname,s_status,s_city) values("s1","Smith",20,"London");


insert into s(sno,sname,s_status,s_city) values("s2","Jones",10,"Paris");


insert into s(sno,sname,s_status,s_city) values("s3","Blake",30,"Paris");


insert into s(sno,sname,s_status,s_city) values("s4","Clark",20,"London");


insert into s(sno,sname,s_status,s_city) values("s5","Adams",30,"Athens");


select *from s;



-> insert data in p table

:-
insert into p(pno,pname,color,weight,p_city) values("p1","Nut","Red",12.0,"London");


insert into p(pno,pname,color,weight,p_city) values("p2","Bolt","Green",17.0,"Paris");


insert into p(pno,pname,color,weight,p_city) values("p3","Screw","Blue",17.0,"Oslo");


insert into p(pno,pname,color,weight,p_city) values("p4","Screw","Red",14.0,"London");


insert into p(pno,pname,color,weight,p_city) values("p5","Cam","Blue",12.0,"Paris");


insert into p(pno,pname,color,weight,p_city) values("p6","Cam","Red",19.0,"London");


select *from p;



-> insert data in sp table:-


insert into sp(sno,pno,qty) values("s1","p1",300);

insert into sp(sno,pno,qty) values("s1","p2",200);


insert into sp(sno,pno,qty) values("s1","p3",400);

insert into sp(sno,pno,qty) values("s1","p4",200);


insert into sp(sno,pno,qty) values("s1","p5",100);

insert into sp(sno,pno,qty) values("s1","p6",100);


insert into sp(sno,pno,qty) values("s2","p1",300);

insert into sp(sno,pno,qty) values("s2","p2",400);


insert into sp(sno,pno,qty) values("s3","p2",200);

insert into sp(sno,pno,qty) values("s4","p2",200);


insert into sp(sno,pno,qty) values("s4","p4",300);

insert into sp(sno,pno,qty) values("s4","p5",400);


select *from sp;




#Assignment Query Perform:-



Q1.Show all parts located at London city.

select *from p where p_city="London";



Q2.Show maximum weight part name.

select pname from p where weight=(select max(weight) from p);



Q.3. Show all parts name , part number for part color = Red
;
select pname,pno from p where color="Red";



Q.4. Show suppler name , suppler city who supply part qty more then 200.

select sname,s_city from s,sp where s.sno=sp.sno and sp.qty>200;

select distinct sname,s_city from s,sp where s.sno=sp.sno and sp.qty>200;


Q.5. Show second highest weight.

select max(weight) from p where weight<(select max(weight)from p);

select distinct weight from p order by weight desc limit 1,1;




Q.6. Show suppler no and qty for part supply for highest weight part.

select sp.sno,sp.qty from sp,p where sp.pno=p.pno and p.weight=(select max(weight)from p);



Q.7. Show suppler name and qty for part color is "Red" supply.

select s.sname,sp.qty from sp,p,s where p.color="Red" and sp.pno=p.pno and sp.sno=s.sno;



Q.8. Show suppler name , part city and qty for suppler status is less then 30 shipment supply.

select s.sname,p.p_city,sp.qty from sp,p,s where sp.pno=p.pno and sp.sno=s.sno and s.s_status<30;



Q.9. Show each suppers total qty supply.

select s.sname,sum(sp.qty) from sp,s where sp.sno=s.sno group by sp.sno;



Q.10. Show each parts total qty supply.

select sp.pno,p.pname,sum(sp.qty) from sp,p where sp.pno=p.pno group by p.pno;



Q.11. Show each part anmes total qty supply.

select p.pname,sum(sp.qty) from sp,p where sp.pno=p.pno group by p.pname;



Q.12. Show each suppers whose suppler number is less then 's4' give total qty supply by each suppler.

select s.sname,s.sno,sum(sp.qty) from sp,s where  sp.sno=s.sno group by sp.sno having sp.sno<"s4";



Q.13. Show each suppers whose suppler status is 20 give total qty supply by each suppler.

select s.sname,s.sno,sum(sp.qty)from sp,s where sp.sno=s.sno and s.s_status=20 group by sp.sno;