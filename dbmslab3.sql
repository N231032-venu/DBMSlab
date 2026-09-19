use playstore;
-- task1
delete from apps
where developerid not in (select developerid from developers);
alter TABLE apps 
ADD constraint fk_add 
foreign key(developerid)
references developers(developerid);
delete from apps
where publisherid not in (select publisherid from publishers);
alter TABLE apps 
ADD constraint fk_addd 
foreign key(publisherid)
references publishers(publisherid);
delete from apps 
where categoryid not in (select categoryid from categories);
alter TABLE apps 
ADD constraint fk_adddd 
foreign key(categoryid)
references categories(categoryid);
select * from apps where rating>4.5 ;
select * from apps where price=0;
select * from apps where categoryid=305;
-- task 2
select * from apps where downloads>5000000;
select * from apps where rating>4.3 and rating<4.7;
select * from apps where price=0 or price=299;
select * from apps where appname like ('G%') ;
select * from apps where appname like ('%Google%');
select * from apps where rating>4.0 and downloads>5000000;
select * from apps where categoryid=301 or categoryid=305;
-- task3
select * from apps where not appname like ('G%');
select * from apps where rating < 4.5 or  downloads>10000000;
select * from developers where developername like ('%a%');
select * from apps where price>0 and price<300;
select * from apps where publisherid=201 or publisherid=204;
-- insert into apps (here it shows cant add as foreign key constraint fails )
-- values (43,"hello",765,76,345,5,3,5)
select * from apps where categoryid!=305;