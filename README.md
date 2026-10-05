# Healthcare-Disease-Analysis-and-Prediction-System
EDA analysis on Healthcare Dataset using numpy , pandas , matplotlib , seaborn 

🏥 Healthcare Disease Analysis and Prediction System
📌 Project Overview

The Healthcare Disease Analysis and Prediction System is an Exploratory Data Analysis (EDA) project focused on analyzing healthcare and lifestyle information of patients to identify meaningful patterns related to disease prediction.

The project works with 10,000 patient records and 13 attributes, including demographic information, health measurements, lifestyle factors, and the disease prediction target.

The analysis covers the complete data-analysis workflow, including data understanding, data cleaning, missing-value treatment, descriptive statistics, univariate analysis, bivariate analysis, multivariate analysis, correlation analysis, outlier detection, and risk analysis.

The cleaned and analyzed dataset can also serve as a foundation for further SQL analysis, Power BI dashboards, and machine-learning-based disease prediction.

🎯 Project Objectives

The main objectives of this project are:

Understand the structure and characteristics of healthcare data.
Identify and handle missing values.
Analyze numerical and categorical variables.
Detect and handle outliers.
Study relationships between health and lifestyle variables.
Analyze disease-prediction patterns.
Identify patients with multiple potentially high-risk indicators.
Generate meaningful business/healthcare insights from the data.
Prepare a clean dataset for further analytics and machine learning.
📊 Dataset Information

Dataset Source: Kaggle

Total Records: 10,000
Total Columns: 13

Dataset Features
Column	Description
Patient_ID	Unique patient identifier
Age	Age of the patient
Sex	Gender of the patient
BMI	Body Mass Index
Blood_Pressure	Patient blood pressure
Glucose_Level	Blood glucose level
Cholesterol	Cholesterol level
Heart_Rate	Patient heart rate
Smoking	Smoking status
Family_History	Family disease-history information
Physical_Activity	Physical activity level
Sleep_Hours	Average sleep duration
Disease_Prediction	Disease prediction target
🛠️ Technologies & Libraries Used
Programming Language
Python
Libraries
NumPy – Numerical operations
Pandas – Data manipulation and analysis
Matplotlib – Data visualization
Seaborn – Statistical visualization
Development Environment
Jupyter Notebook
Google Colab
🔄 Project Workflow
Dataset
   ↓
Data Loading
   ↓
Data Understanding
   ↓
Data Quality Checking
   ↓
Missing Value Analysis
   ↓
Data Cleaning
   ↓
Descriptive Statistics
   ↓
Univariate Analysis
   ↓
Bivariate Analysis
   ↓
Multivariate Analysis
   ↓
Correlation Analysis
   ↓
Outlier Detection & Treatment
   ↓
Risk Analysis
   ↓
Key Insights
   ↓
Conclusion
🧹 Data Cleaning

The following data-cleaning activities were performed:

1. Missing Value Detection

Missing values were identified using Pandas functions such as:

df.isnull().sum()

The dataset contained missing values in several health-related and lifestyle columns.

2. Missing Value Treatment

Appropriate imputation techniques were applied to handle missing observations.

Numerical variables → Mean-based imputation
Categorical variables → Mode-based imputation

This helped retain patient records instead of unnecessarily deleting rows.

3. Duplicate Checking

Duplicate records were checked to maintain dataset quality.

df.duplicated().sum()
4. Data Type Checking

The data types of all 13 columns were examined and verified before performing further analysis.

📈 Exploratory Data Analysis
Univariate Analysis

Individual variables were analyzed using:

Histograms
Count plots
Box plots
Distribution plots

The analysis focused on:

Age
BMI
Blood Pressure
Glucose Level
Cholesterol
Heart Rate
Sleep Hours
Smoking
Family History
Physical Activity
Disease Prediction
🔗 Bivariate Analysis

Relationships between two variables were analyzed to understand potential patterns.

Examples include:

Age vs Disease Prediction
BMI vs Disease Prediction
Blood Pressure vs Disease Prediction
Glucose Level vs Disease Prediction
Cholesterol vs Disease Prediction
Smoking vs Disease Prediction
Family History vs Disease Prediction
Physical Activity vs Disease Prediction

These comparisons helped identify differences in health indicators across disease-prediction groups.

📊 Multivariate Analysis

Multiple healthcare variables were analyzed together to understand how different health indicators interact.

The project examined combinations of:

BMI
Blood Pressure
Glucose Level
Cholesterol
Age
Heart Rate
Lifestyle factors

Correlation analysis was also performed to understand relationships between numerical variables.

🚨 Outlier Analysis

Outliers were analyzed using the Interquartile Range (IQR) method.

The analysis focused on health indicators such as:

BMI
Blood Pressure
Glucose Level
Cholesterol
Heart Rate
Sleep Hours

Instead of blindly removing observations, outlier treatment was performed to reduce the impact of extreme values while preserving useful patient records.

❤️ Risk Analysis

A simple patient risk analysis was performed using multiple health indicators.

The risk analysis considered:

BMI
Blood Pressure
Glucose Level
Cholesterol

Patients having multiple indicators above their respective median values were identified as potentially higher-risk cases.

This provides a simple analytical approach for identifying patients who may require additional investigation.

Note: This risk score is an analytical feature created for this project and should not be interpreted as a medical diagnosis.

🔍 Key Insights

The analysis produced several important findings:

1. Patient Population

The dataset contains 10,000 patient records with demographic, health, and lifestyle information.

2. Health Indicators

BMI, blood pressure, glucose, and cholesterol show variation across patients and contain potentially important information for disease-risk analysis.

3. Missing Data

Missing observations were identified in several variables and treated using appropriate imputation techniques.

4. Outliers

Several healthcare variables contain extreme observations, making outlier analysis an important part of the data-cleaning process.

5. Lifestyle Factors

Smoking, family history, and physical activity were analyzed to understand their relationship with disease-prediction patterns.

6. Age

Disease-prediction patterns were compared across different age ranges, allowing age-related differences to be explored.

7. Combined Risk Indicators

Analyzing BMI, blood pressure, glucose, and cholesterol together provides more useful risk information than examining each variable independently.

💡 Key Findings

Healthcare data analysis can reveal meaningful relationships between patient demographics, health indicators, lifestyle characteristics, and disease-prediction outcomes.

Data cleaning and outlier treatment are essential before using healthcare data for further statistical or machine-learning analysis.

Combining multiple health indicators provides a more useful view of potential patient risk than relying on a single variable.

📌 Project Conclusion

The Healthcare Disease Analysis and Prediction System successfully performed an end-to-end exploratory data analysis on 10,000 patient records.

The project analyzed patient demographics, health indicators, lifestyle factors, disease-prediction patterns, missing values, and outliers. Missing values were treated using appropriate imputation techniques, while extreme observations were analyzed using the IQR method.

The analysis identified useful patterns across age, BMI, blood pressure, glucose level, cholesterol, smoking, family history, physical activity, and sleep hours. A combined risk score based on BMI, blood pressure, glucose, and cholesterol was also developed to identify patients with multiple elevated health indicators.

Overall, the project demonstrates how Python and EDA techniques can transform raw healthcare data into meaningful analytical insights. The resulting cleaned dataset provides a strong foundation for future SQL analysis, Power BI dashboard development, and machine-learning-based disease prediction.

🚀 Future Scope

This project can be extended further by:

Building a complete SQL analytics layer.
Creating an interactive Power BI healthcare dashboard.
Applying machine-learning classification algorithms.
Comparing models such as Logistic Regression, Decision Tree, Random Forest, and AdaBoost.
Performing hyperparameter tuning.
Handling class imbalance using techniques such as SMOTE when appropriate.
Evaluating models using Accuracy, Precision, Recall, F1-score, and ROC-AUC.
Adding model explainability using feature-importance techniques.
Developing a simple healthcare risk-prediction application.
