select * from dataanalytics.international_debt;

--task 1 ) What is the total amount of debt owed by all countries in the dataset?

select count (*) from
dataanalytics.international_debt;


-- task 2) How many distinct countries are recorded in the dataset?

SELECT COUNT(DISTINCT country_name) AS distinct_country_count
FROM dataanalytics.international_debt;


-- task 3) - What are the distinct types of debt indicators, and what do they represent?

select distinct indicator_code,indicator_name from dataanalytics.international_debt;



--task 4 ) Which country has the highest total debt, and how much does it owe?


select debt,country_name from dataanalytics.international_debt
order by debt desc
limit 1;

--task 5 ) - What is the average debt across different debt indicators?

select distinct indicator_code,indicator_name,debt from dataanalytics.international_debt


--task 6) - Which country has made the highest amount of principal repayments?


select debt,country_name from dataanalytics.international_debt
order by debt ASC
limit 1;


---task 7 ) - - What is the most common debt indicator across all countries?


select indicator_name, count (*)  as comon_debtindicator from dataanalytics.international_debt
group by indicator_name 
limit 1;


--- task 8 ) Identify any other key debt trends and summarize your findings.

SELECT country_name, SUM(debt) AS total_debt
FROM dataanalytics.international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 5;

--these are the top 5 with the highest debt



