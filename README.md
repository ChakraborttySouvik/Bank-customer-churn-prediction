# 📊 Bank Customer Churn Prediction & Retention Analytics

## 📌 Project Overview

This project is an end-to-end customer churn analytics solution built using Machine Learning, MySQL, and Power BI.

The objective is to identify customers at risk of leaving the bank, analyze factors contributing to churn, and provide actionable business recommendations to improve customer retention and profitability.

---

## 🚀 Tools & Technologies

* Python
* Pandas
* NumPy
* Scikit-learn
* XGBoost
* MySQL
* Power BI
* Jupyter Notebook
* Matplotlib
* Seaborn

---

## 📂 Dataset

The dataset contains information for 10,000 bank customers, including:

* Customer ID
* Credit Score
* Geography
* Gender
* Age
* Tenure
* Balance
* Number of Products
* Credit Card Ownership
* Active Membership Status
* Estimated Salary
* Customer Churn (Exited)

---

## 🤖 Machine Learning Pipeline

### Models Implemented

* Logistic Regression
* Decision Tree
* Random Forest
* K-Nearest Neighbors (KNN)
* Support Vector Machine (SVM)
* Gradient Boosting
* XGBoost

### Techniques Used

* Data Cleaning
* Exploratory Data Analysis (EDA)
* Feature Engineering
* Label Encoding
* Feature Scaling
* SMOTE for Imbalanced Data
* Model Evaluation

### Model Performance

* Accuracy: 89%
* AUC-ROC Score: 95%
* Best Performing Model: Random Forest

---

## 📓 Jupyter Notebook

Notebook:

```text
notebooks/ML_Bank_Churn_Predication.ipynb
```

The notebook includes:

* Data preprocessing
* Exploratory Data Analysis
* Feature Engineering
* SMOTE Oversampling
* Model Training
* Model Comparison
* Churn Prediction

---

## 🗄️ SQL Analysis

SQL queries were used to analyze customer behavior and churn patterns.

### Analysis Performed

* Total Customers
* Churned Customers
* Churn Rate
* Churn by Geography
* Churn by Gender
* Churn by Age Group
* Average Balance Analysis
* Average Credit Score Analysis
* Average Tenure Analysis

SQL Script:

```text
sql/bank_churn_analysis.sql
```

---

## 📊 Power BI Dashboard

The interactive dashboard provides:

### KPI Cards

* Total Customers
* Churned Customers
* Average Credit Score
* Average Balance
* Average Tenure

### Visualizations

* Churn by Geography
* Churn by Gender
* Churn by Age Group
* Average Balance by Geography
* Interactive Filters and Slicers

### Dashboard Screenshot

<img width="1325" height="739" alt="Dashboard" src="https://github.com/user-attachments/assets/e8b41a78-8343-4cc8-a823-1b2d8be2c4fa" />

---

## 🔍 Key Insights

* Germany exhibits the highest customer churn rate.
* Female customers show slightly higher churn compared to male customers.
* Customers with lower tenure are more likely to leave the bank.
* Active members demonstrate significantly lower churn rates.
* Customer balance and geography have a strong influence on churn behavior.

---

## 💡 Business Recommendations

* Develop targeted retention campaigns for high-risk customers.
* Increase engagement among inactive customers.
* Offer loyalty rewards to long-tenure customers.
* Build personalized banking products based on customer profiles.
* Continuously monitor churn patterns across regions.

---

## 📁 Project Structure

```text
bank-customer-churn-prediction/
│
├── data/
│   └── Churn_Modeling.csv
│
├── notebooks/
│   └── ML_Bank_Churn_Predication.ipynb
│
├── sql/
│   └── bank_churn_analysis.sql
│
├── powerbi/
│   └── Bank_Churn_Dashboard.pbix
│
├── requirements.txt
│
└── README.md
```

---

## 👨‍💻 Author

**Souvik Chakraborty**

B.Tech Computer Science Graduate

Aspiring Data Analyst | SQL | Power BI | Python | Machine Learning

GitHub: https://github.com/ChakraborttySouvik
