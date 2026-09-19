use playstore;
select UPPER(developername) from developers;
select lower(developername) from developers;
select length(appname) from apps;
select concat(categoryname,'  ',length(categoryname)) from categories;
select current_date(),current_time();
select ROUND(rating,0) from apps;
-- task 2
select concat(appname, '  ',substring(appname,1,5)) from apps;
select concat(developername,'  ',country) from developers ;
select round(rating,0) from apps;
select ceil(price) from apps ;
select  concat(developername,'founded',foundedyear) from developers;
select convert(downloads,char) from apps;
-- task3
select concat(upper(appname),'  ',rating) from apps;
select substring(categoryname,1,3) from categories ;
select abs(price-200) from apps ;
select concat(developername,'  ',length(developername)) from developers;
select current_date() , current_time(); 
select convert(34,char) ;