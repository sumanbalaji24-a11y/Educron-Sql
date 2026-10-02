-- # 40 SQL Practice Questions – SH Schema

------------------------------------------------------------## SELECT + WHERE ----------------------------------------------------------------------------------------


-- 1. From `SH.CUSTOMERS`, display customer ID, first name, last name, gender, and marital status for all female customers.
select cust_id,CUST_FIRST_NAME, Cust_last_name,cust_gender,cust_marital_status from SH.CUSTOMERS where cust_gender='F'

-- 2. From `SH.CUSTOMERS`, find customers whose last name starts with `S` and whose year of birth is greater than 1970.
select Cust_last_name, cust_year_of_birth from SH.CUSTOMERS where Cust_last_name like 'S%' and cust_year_of_birth > 1970

-- 3. From `SH.PRODUCTS`, display product ID, product name, category, and list price for products whose list price is between 100 and 500.
select prod_id, prod_name, prod_category, prod_list_price from SH.PRODUCTS
where prod_list_price between 100 and 500

-- 4.From SH.PRODUCTS, find products whose minimum price is less than 50 and whose status is available.
-- SELECT distinct prod_status FROM sh.products 
select * from sh.products where prod_min_price < 50 and prod_status = 'available'

-- 5.From SH.SALES, display product ID, customer ID, quantity sold, and amount sold for transactions where the amount sold is greater than 1000.
-- SELECT * FROM  SH.SALES WHERE ROWNUM = 1;
-- select Count(*) as totalsales from sh.sales where amount_sold > 1000
select prod_id, cust_id,quantity_sold, amount_sold from sh.sales  where amount_sold > 1000

-- 6.From SH.SALES, find transactions where the quantity sold is greater than 2 and the channel ID is 3.
select * from sh.sales where quantity_sold > 2 and channel_id=3

-- 7. From `SH.CHANNELS`, display channel ID and channel description for channels whose description contains the word `Direct`.
-- select * from sh.channels where rownum=1
select channel_id,channel_desc from sh.channels where channel_desc like '%Direct%'

-- 8. From `SH.PROMOTIONS`, display promotion ID, promotion name, cost, and category where promotion cost is greater than 1000.
-- select * from sh.promotions where rownum=1
select promo_id, promo_name, promo_cost, promo_category from sh.promotions where promo_cost > 1000

-- 9. From `SH.PROMOTIONS`, find promotions whose end date is greater than their begin date and whose promotion cost is greater than 500.
-- select * from sh.promotions where rownum=1
select * from sh.promotions where promo_end_date > promo_begin_date and promo_cost > 500

-- 10. From `SH.COUNTRIES`, display country ID, country name, and region ID for countries belonging to region ID 52790.
-- select * from sh.countries where rownum=1
select country_id, country_name,country_region_id from sh.countries where country_region_id=52790

-- 11. From `SH.TIMES`, display time ID, day name, calendar month name, and calendar year for dates belonging to the year 2000.
-- select * from sh.times where rownum=1
select TIME_ID, DAY_NAME,CALENDAR_MONTH_NAME, CALENDAR_YEAR from sh.times where CALENDAR_YEAR = 2000

-- 12. From `SH.TIMES`, find all dates where the calendar month name is `December` and the calendar year is 2001.
-- select CALENDAR_MONTH_NAME, CALENDAR_YEAR from sh.times where rownum=1
-- select CALENDAR_MONTH_NAME, CALENDAR_YEAR from sh.times where CALENDAR_YEAR=2001
-- select CALENDAR_MONTH_NAME, CALENDAR_YEAR from sh.times where CALENDAR_MONTH_NAME='December' order by CALENDAR_YEAR Asc
select * from sh.times where CALENDAR_MONTH_NAME='December' and CALENDAR_YEAR=2001

-- 13. From `SH.COSTS`, display product ID, time ID, unit cost, and unit price where unit price is greater than unit cost.
-- select PROD_ID, TIME_ID, UNIT_COST, UNIT_PRICE from SH.COSTS where rownum=1
select PROD_ID, TIME_ID, UNIT_COST, UNIT_PRICE from SH.COSTS where UNIT_PRICE > UNIT_COST

-- 14. From `SH.COSTS`, find records where unit cost is greater than 100 and unit price is less than 1000.
-- select * from SH.COSTS where rownum=1
select * from SH.COSTS where UNIT_COST > 100 and UNIT_PRICE < 1000

-- 15. From `SH.SUPPLEMENTARY_DEMOGRAPHICS`, display customer ID, education, occupation, and household size for customers whose household size is greater than 3.
-- select * from SH.SUPPLEMENTARY_DEMOGRAPHICS
select CUST_ID, EDUCATION, OCCUPATION, HOUSEHOLD_SIZE  from SH.SUPPLEMENTARY_DEMOGRAPHICS 
WHERE TO_NUMBER(REGEXP_SUBSTR(HOUSEHOLD_SIZE, '^[0-9]+')) > 3;


--------------------------------------------------------------------- ## GROUP BY  --------------------------------------------------------------------------------------------------


-- 16. Using `SH.CUSTOMERS`, find the number of customers belonging to each marital status.
-- select  * from sh.customers where rownum=1
select Cust_Gender, count(*) as employeeCount from SH.CUSTOMERS group by Cust_Gender  

-- 17. Using `SH.CUSTOMERS`, find the average customer year of birth for each gender.
-- select  * from sh.customers where rownum=1
select  Cust_Gender, Floor(Avg(CUST_YEAR_OF_BIRTH)) as customers from sh.customers group by Cust_Gender

-- 18. Using `SH.PRODUCTS`, find the average list price of products in each product category.
-- select * from SH.PRODUCTS where rownum=1
select prod_category, avg(PROD_LIST_PRICE) as AvgProdListPrice from SH.PRODUCTS group by prod_category

-- 19. Using `SH.PRODUCTS`, find the highest minimum price in each product subcategory.
-- select * from SH.PRODUCTS where rownum=1
select PROD_SUBCATEGORY,  Max(PROD_MIN_PRICE) as HighestMinPrice  from SH.PRODUCTS group by PROD_SUBCATEGORY

-- 20. Using `SH.SALES`, calculate the total sales amount generated by each channel.
-- select * from SH.SALES where rownum=1
select channel_id, sum(amount_sold) as TotalSalesAmount  from sh.sales group by channel_id

-- 21. Using `SH.SALES`, calculate the total quantity sold for each product.
-- select * from SH.SALES where rownum=1
select prod_id, SUM(QUANTITY_SOLD) from sh.sales group by prod_id

-- 22. Using `SH.SALES`, find the average sales amount for each promotion.
-- select * from SH.SALES where rownum=1
select promo_id, avg(AMOUNT_SOLD) as AvgSalesAmount from sh.sales group by promo_id

-- 23. Using `SH.PROMOTIONS`, calculate the total promotion cost for each promotion category.
-- select * from SH.PROMOTIONS where rownum=1
select promo_category, sum(PROMO_COST) as PromotionCost from sh.promotions group by promo_category

-- 24. Using `SH.COUNTRIES`, count the number of countries belonging to each region.
-- select * from sh.countries where rownum=1
select country_region, count(distinct country_name) as countries from sh.countries group by country_region


-- 25. Using `SH.COSTS`, calculate the average unit cost for each product.
-- select * from sh.costs where rownum=1
select prod_id, avg(unit_cost) as AvgUnitCost from sh.costs group by prod_id


--------------------------------------------------------------## TWO-LEVEL GROUP BY -----------------------------------------------------------------------------------]


-- 26. Using `SH.CUSTOMERS`, count customers by gender and marital status.
-- select * from sh.customers where rownum =1
select cust_gender , cust_marital_status, count(*) from sh.customers  group by cust_gender, cust_marital_status

-- 27. Using `SH.PRODUCTS`, count products by product category and product subcategory.
-- select * from sh.products where rownum=1
select prod_category, prod_subcategory, count(*) as Total_Products from sh.products group by prod_subcategory,prod_category

-- 28. Using `SH.SALES`, calculate total sales amount for each product and channel combination.
-- select * from sh.sales where rownum=1
select prod_id, channel_id, sum(amount_sold) as TotalSales from sh.sales group by prod_id, channel_id

-- 29. Using `SH.SALES`, calculate total quantity sold for each channel and promotion combination.
-- select * from sh.sales where rownum=1
select channel_id, promo_id, sum(QUANTITY_SOLD) as TotalQuantitySold from sh.sales group by channel_id, promo_id

-- 30. Using `SH.COSTS`, find the average unit cost for each product and promotion combination.
-- select * from sh.costs where rownum=1
select prod_id, promo_id, avg(unit_cost) as AvgUnitCost from sh.costs group by prod_id, promo_id



---------------------------------------------------------------------------## WHERE + GROUP BY---------------------------------------------------------------------------------------


-- 31. From `SH.SALES`, consider only transactions where `AMOUNT_SOLD > 500` and calculate total sales amount for each channel.
-- select * from sh.sales where rownum=1
-- select sum(amount_sold) as totalAmountSold from sh.sales where amount_sold > 500 and channel_id=4
select channel_id, sum(amount_sold) as TotalSalesAmount from sh.sales where amount_sold > 500 group by channel_id


-- 32. From `SH.PRODUCTS`, consider only products whose list price is greater than 100 and find the average list price for each product category.
-- select * from sh.products where rownum=1
-- select avg(prod_list_price) as AverageProductListPrice from sh.products where prod_list_price > 100 and prod_category='Baseball'
select prod_category, avg(prod_list_price) as AverageProductListPrice from sh.products where prod_list_price > 100 group by prod_category


-- 33. From `SH.CUSTOMERS`, consider only customers born after 1970 and count them by marital status.
-- select * from sh.customers where rownum=1
-- select count(*) as TotalCount from sh.customers where cust_year_of_birth > 1970 and cust_marital_status ='divorced'
select cust_marital_status, count(*) as TotalCount from sh.customers where cust_year_of_birth > 1970 group by cust_marital_status

-- 34. From `SH.PROMOTIONS`, consider only promotions whose cost is greater than 500 and calculate the average promotion cost for each promotion category.
-- select * from sh.promotions where rownum =1
select promo_category, avg(PROMO_COST) as AvgPromoCost from sh.promotions where promo_cost > 500 group by promo_category

-- 35. From `SH.COSTS`, consider records where unit cost is greater than 50 and calculate the maximum unit price for each product.
-- select * from sh.costs where rownum=1
select prod_id, Max(unit_cost) as MaxUnitPrice from sh.costs where unit_cost > 50 group by prod_id



----------------------------------------------------------------- ## GROUP BY + HAVING ----------------------------------------------------------------------------------------------


-- 36. Using `SH.CUSTOMERS`, display marital statuses having more than 100 customers.
-- select * from sh.customers where rownum=1
select cust_marital_status, count(*) as CustomerCount from sh.customers group by cust_marital_status having CustomerCount > 100

-- 37. Using `SH.PRODUCTS`, display product categories whose average list price is greater than 500.
-- select * from sh.products where rownum =1 
select prod_category, avg(PROD_LIST_PRICE) as AvgProdListPrioce from sh.products group by prod_category having AvgProdListPrioce > 500

-- 38. Using `SH.SALES`, display channels whose total sales amount is greater than 100000.
-- select * from sh.sales where rownum=1
select channel_id, sum(AMOUNT_SOLD) as TotalAmtSold from sh.sales group by channel_id having TotalAmtSold > 100000

-- 39. Using `SH.PROMOTIONS`, display promotion categories whose average promotion cost is greater than 1000.
-- select * from sh.promotions where rownum =1
select promo_category, avg(PROMO_COST) as AvgPromCost  from sh.promotions group by promo_category having AvgPromCost > 1000

-- 40. Using `SH.COSTS`, display products whose average unit price is greater than 500.
-- select * from sh.costs where rownum=1
select prod_id, avg(UNIT_PRICE) as AvgUnitPrice from sh.costs group by prod_id having AvgUnitPrice > 500