create database marketing;
use marketing;
select * from aman ;
#problem1:->How many people visits in website  by categorywise. 
select Education,sum(NumWebVisitsMonth) as total_visitor from aman group by Education;

#problem2:->How many total complain comes from each category of Education. 
select Education,sum(Complain) as total_complain from aman group by Education;

#problem3:-Total Income of people by Marital status.
select Marital_Status,sum(Income) as total_income from aman group by Marital_Status;

#problem4:->How many students are doing graduation, Master degree, PHD, Basic, 2nd cycle.
select Education,count(*) as total from aman group by Education;

#problem5:->Total number of students purchases Catalog.
select Education,sum(NumCatalogPurchases) as total_purchase from aman group by Education;

#problem6:->Total responses student got when they complained by categorywise.
select Education,sum(Response) as total_response from aman group by Education;

#problem7:->How many people are Single,Together,Married and Divorced or other.
select Marital_Status,count(Marital_Status) as total from aman group by Marital_Status;

#problem8:->Total Income of people by Education Category.
select Education,sum(Income) as total_income from aman group by Education;

#problem9:->How many Total purchases in Website(NumWebPurchases) by Education Category.
select Education,sum(NumWebPurchases) as total_purchase from aman group by Education;

#problem10:->How many fruits purchases from  Each students.
select ID,sum(MntFruits) as total from aman group by ID;

#problem11:->How many people have Z_CostContact in Education Category.
select Education,sum(Z_CostContact) as z_contact from aman group by Education;

#problem12:->Who have purchased more Meat in Education Category.
select ID,sum(MntMeatProducts) as total_order_of_Meat from aman group by ID order by total_order_of_Meat desc limit 1;

#problem13:->Who have purchased more fruits in Education Category.
select ID,sum(MntSweetProducts) as total_order_of_fruits from aman group by ID order by total_order_of_fruits desc limit 1;

#problem14:->Which category of Education have purchased more fruits.
select Education,sum(MntSweetProducts) as total_fruits from aman group by Education order by total_fruits desc limit 1;

#problem15:->Total fish purchased by people in Marital_status(category-wise) along with their date they have purchased.
select Marital_Status,Dt_Customer,sum(MntFishProducts) as total_fish from aman group by Marital_Status,Dt_Customer;