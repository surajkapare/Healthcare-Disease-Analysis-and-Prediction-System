use master_project;
show tables;
select * from cleaned;
select database();

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Q1.How many patients are predicted with and without the disease?
select * from cleaned;
select disease_prediction,count(*) as total_patients
from cleaned
group by disease_prediction;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Q2.What is the disease prediction percentage?
select disease_prediction,count(*) as total_patient,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned), 2) AS percentage
from cleaned
group by disease_prediction;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Q3.Which age has the highest number of predicted disease cases?
select * from cleaned;
select age_group,count(disease_prediction) as total_count
from cleaned 
where disease_prediction = "Yes"
group by age_group
order by total_count desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Q4.What is the disease rate for each sex?
select sex,count(*) as total_patient, 
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned), 2) AS percentage
from cleaned
where disease_prediction = "Yes"
group by sex;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem statement:- Calculate average BP for each age group
-- Q4.Which age group has the highest average blood pressure?
use master_project;
select * from cleaned;
select age_group, round(avg(blood_pressure),2) as average_BP
from cleaned
group by age_group
order by average_BP desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem statement:- Compare BMI across activity categories.
-- Q5.Which physical activity group has the highest average BMI?
select * from cleaned;
select physical_activity,avg(bmi) as average_bmi 
from cleaned 
group by physical_activity 
order by average_bmi desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem statement:- Compare multiple health indicators between Yes and No groups.
-- Q6.Which prediction group has the highest average BMI, BP, glucose and cholesterol?
select disease_prediction,round(avg(bmi),2) as average_bmi,round(avg(blood_pressure),2) as average_BP,
       round(avg(glucose_level),2) as average_glucose,round(avg(cholesterol),2) as average_cholesterol
from cleaned
group by disease_prediction 
order by average_BP desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem statement:- Compare BP between smokers and non-smokers.
-- Q7.Which smoking group has the highest average blood pressure?
select * from cleaned;
select smoking,avg(blood_pressure) as average_BP
from cleaned
group by smoking
order by average_BP desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem statement:- Compare glucose levels based on family history.
-- Q8.Which family-history group has the highest average glucose?
use master_project;
select * from cleaned ;
select family_history,round(avg(glucose_level),2) as average_glucose_level
from cleaned
group by family_history
order by average_glucose_level desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- problem statement:- Compare cholesterol between sexes.
-- Q9.Which sex has the highest average cholesterol?
select sex,round(avg(cholesterol),2) as average_cholesterol 
from cleaned 
group by sex 
order by average_cholesterol desc;

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- problem statement:-Calculate smoking percentage within each age group.
-- Q10.Which age group has the highest percentage of smokers? 
select age_group,smoking,ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned), 2) as percentage
from cleaned
where not smoking = "No"
group by age_group,smoking
order by percentage desc; 

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- problem statement:-Compare sleep hours between prediction groups.
-- Q11.What is the average sleep duration for Yes and No predictions? 
select disease_prediction,round(avg(sleep_hours),2) as average_sleep_time
from cleaned
group by disease_prediction;

-- ----------------------------------------------------------------------------------------------------------------------------------------
use master_project;
select * from cleaned;
-- Problem statement:-Compare heart rate across age groups.
-- Q12.Which age group has the highest average heart rate?
select age_group,round(avg(heart_rate),2) as average_rate
from cleaned
group by age_group
order by average_rate desc;
 
-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem Statement :- Multi-factor demographic analysis
-- Q13. 
select age_group,sex,count(*) as total_patient
from cleaned
where disease_prediction = "Yes"
group by age_group,sex
order by total_patient desc;
-- Insight: Identifies the most affected demographic segment.

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Problem Statement:-Extreme-value analysis
-- Q14. Which patients have the highest BMI, glucose, cholesterol and blood pressure?
select * from cleaned;
select patient_id,round(bmi,2)as bmi,glucose_level,cholesterol,blood_pressure
from cleaned 
where bmi = (SELECT MAX(bmi) FROM cleaned)
   OR glucose_level = (SELECT MAX(glucose_level) FROM cleaned)
   OR cholesterol = (SELECT MAX(cholesterol) FROM cleaned)
   OR blood_pressure = (SELECT MAX(blood_pressure) FROM cleaned);
-- Insight: Helps identify extreme observations for further investigation

-- ----------------------------------------------------------------------------------------------------------------------------------------
-- Q15 Which combination of age group + sex + smoking + physical activity + family history has the highest Yes-prediction rate?
use master_project;
SELECT age_group,sex,smoking,physical_activity,family_history,COUNT(*) AS total_patients,
    SUM(CASE WHEN disease_prediction = 'Yes' THEN 1 ELSE 0 END) AS yes_predictions,
    ROUND(SUM(CASE WHEN disease_prediction = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS yes_prediction_rate
FROM cleaned
GROUP BY age_group,sex,smoking,physical_activity,family_history
ORDER BY yes_prediction_rate DESC
LIMIT 10;
