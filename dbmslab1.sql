 create database playstore;
 
 use playstore;
 create table developers(
 developerid int primary key,
 developername varchar(60) not null,
 country varchar(30) ,
 foundedyear int
 );
 select * from developers;
 insert into developers
 values
  (101,'google','usa',1998),
  (102,'meta platforms','USA',2004),
  (103,'spotifyab','sweden',2006),
  (104,'canva pty','australia',2012),
  (105,'byju"s"','india',2011);
  select * from developers;
create table publishers(
publisherid int primary key,
publishername varchar(60),
headoffice varchar(40),
supportemail varchar(60));
insert into publishers
values
(201,'google play','california','support@google.com'),
(202,'samsung galaxy','seoul','support@samsung.com'),
(203,'huawei app','shenzhen','support@huawei.com'),
(204,'amazon appstore','seattle','support@amazon.com');
select * from publishers;
create table categories(
categoryid int primary key,
categoryname varchar(40),
minimumage int);
insert into categories
values
(301,'education',3),
(302,'productivity',3),
(303,'music',12),
(304,'social',13),
(305,'gaming',16);
select * from categories;
create table apps(
appid int primary key,
appname varchar(60),
developerid int,
publisherid int,
categoryid int,
rating decimal,
downloads int,
price decimal );
insert into apps
values
(1001,'googleclassroom',101,201,301,4.6,500000,0),
(1002,'googlekeep',101,201,301,4.6,500000,0),
(1003,'instagram',102,201,301,4.6,500000,0),
(1004,'spotify',103,201,301,4.6,5000000,0),
(1005,'canva',104,201,301,4.6,500000,0),
(1006,'byjuslearn',105,201,301,4.6,500000,0),
(1007,'candycrush',106,201,301,4.6,500000,0),
(1008,'templerun',10,201,301,4.6,500000,0);
select * from apps;
            #TASK1
insert into developers values(106,'openai','usa',2015);
insert into categories values(306,'ai',12);
insert into apps values(1009,'chatgpt',103,405,394,3.5,49999,0);
update apps set rating=4.5 where appname='templerun';
delete from developers where developerid=105;
           #TASK 2
update publishers set supportemail='n231032@email' where publishername='samsung galaxy';
insert into apps values(115,'abc',1234,333,4.9,0,234444,0) ,(116,'xyz',234,432,2.4,9,4563,0);
update apps set price=199 where appname='byjuslearn';
delete from categories where categoryname='music';
select * from developers;
select * from publishers;
select * from categories;
select * from apps;



