-------sql sales analysis project---------

create database sql_project_3;
use sql_project_3;
create table retail(transactions_id	int  primary key,
					sale_date date,
					sale_time time,
					customer_id int,
                    gender varchar(20),
					age	int,
                    category varchar(20),
					quantiy	int,
					price_per_unit float,
					cogs float,	
					total_sale int) ;


select * from retail;

select * from retail limit 20;

select count(*) from retail;

*****DATA CLEANING*******

select * from retail 
where total_sale is null; 

SELECT * FROM retail
WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
    
    
    set sql_safe_updates=0;
    
 delete from retail 
    WHERE 
    transactions_id IS NULL
    OR
    sale_date IS NULL
    OR 
    sale_time IS NULL
    OR
    gender IS NULL
    OR
    category IS NULL
    OR
    quantiy IS NULL
    OR
    cogs IS NULL
    OR
    total_sale IS NULL;
    
    ****DATA EXPLORATION****
    
    1]TOTAL SALES
    
    SELECT COUNT(*) AS total_sales from retail;
    
    2]how many unique customers we have?
    
    SELECT COUNT(distinct customer_id) AS total_sales from retail;
    
    3]total differnt categories we have
    
    select COUNT(distinct category) AS total_sales from retail;
    
    
    
    *****DATA ANALYSIS AND BUSINESS KEY PROBLEMS*****
    
    1} **Retrieve all columns for sales made on '2022-11-05'**:
    
    select * from retail where sale_date='2022-11-05';
    
    2}**Write a SQL query to retrieve all transactions where the category is
    'Clothing' and the quantity sold is more than 4 in the month of Nov-2022**
    
SELECT *
FROM retail
WHERE
    category = 'Clothing'
    AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
    AND quantiy >= 4;
    
select * from retail;

3}calculate the total sales (total_sale) for each category.

select 
	category,
    sum(total_sale) as net_sale,
    count(*) as total_orders 
    from retail 
    group by category; 
    

 4}  find the average age of customers who purchased items from the 'Beauty' category.
 
 select 
 round(avg(age) , 2) as average_age
	from retail 
	where category='Beauty';
    
5}find all transactions where the total_sale is greater than 1000.

select * from 
retail  where total_sale>1000;

6}find the total number of transactions (transaction_id) made by each gender in each category.

select gender ,category,
	count(*)  as total_transactions 
	from retail
    group by gender ,category 
    order by total_transactions  ;
    

7} Calculate the average sale for each month. Find out best selling month in each year
 
 
with t1 as 
 (select 
		year(sale_date) as year,
        month(sale_date) as month,
        avg(total_sale) as sale,
        rank() over(partition by year(sale_date) order by avg(total_sale) desc) as rank_num
        from retail
        group by month,year)
select year,month,sale 
	from t1 where rank_num=1;
      
      
8}find the top 5 customers based on the highest total sales

select customer_id ,
		sum(total_sale ) as net_sale
        from retail 
        group by customer_id 
        order by net_sale desc
        limit 5;
        
        
9}find the number of unique customers who purchased items from each category.

select 
		category, count(distinct customer_id) as unique_cust
        from retail 
        group by category;
        


10}create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)


with hourly_sales as 
(select * ,
		case
			when hour(sale_time)<12 then 'Morning'
            when hour(sale_time)>12 and hour(sale_time)<17 then 'Afternoon'
            else 'Evening'
            end as shift
		from retail)
select shift,count(transactions_id) as total_orders
from hourly_sales 
group by shift ;


