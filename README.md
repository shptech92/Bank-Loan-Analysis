# Bank Loan Analysis – Excel | SQL Server | Power BI  

## 📌 Project Overview  
This project focuses on **Bank Loan Analysis** for financial institutions, helping banks and lending agencies to evaluate loan applicants, assess risk, and make data-driven lending decisions.  

The analysis was performed using:  
- **Excel** for initial data cleaning and preprocessing  
- **MS SQL Server** for querying, aggregating, and extracting insights from loan data  
- **Power BI** for building interactive dashboards and visual reports  

---

## 🎯 Problem Statement  
In order to monitor and assess a bank's lending activities and performance, a **comprehensive Bank Loan Report** was created.  
The report provides insights into loan-related metrics, borrower profiles, and portfolio health, enabling data-driven strategies to reduce defaults and improve trust.  

---

## 📊 Key KPIs  

### 📌 General KPIs  
- **Total Loan Applications** (Overall, MTD, MoM)  
- **Total Funded Amount** (Overall, MTD, MoM)  
- **Total Amount Received** (Overall, MTD, MoM)  
- **Average Interest Rate** (Overall, MTD, MoM)  
- **Average Debt-to-Income Ratio (DTI)** (Overall, MTD, MoM)  

### ✅ Good Loan KPIs  
- % of Good Loan Applications (Fully Paid, Current)  
- Count of Good Loan Applications  
- Good Loan Funded Amount  
- Good Loan Amount Received  

### ❌ Bad Loan KPIs  
- % of Bad Loan Applications (Charged Off)  
- Count of Bad Loan Applications  
- Bad Loan Funded Amount  
- Bad Loan Amount Received  

---

## 📈 Dashboard Designs  

### **Dashboard 1: Summary**  
- KPI Cards for loan applications, funded amount, received amount, Avg. IR, Avg. DTI  
- Good Loan vs Bad Loan indicators  
- Loan Status Grid  

<img width="1334" height="819" alt="Dashboard Screenshot 1 - Summary" src="https://github.com/user-attachments/assets/f3cea680-3dc0-441f-9bd8-cc322d77cedb" />

### **Dashboard 2: Overview**  
- **Monthly Trends (Line Chart):** Applications, Funded Amount, Amount Received  
- **Regional Analysis (Filled Map):** Applications, Funded, Received by State  
- **Loan Term Analysis (Donut Chart)**  
- **Employment Length Analysis (Bar Chart)**  
- **Loan Purpose Breakdown (Bar Chart)**  
- **Home Ownership Analysis (Tree Map)**  

<img width="1314" height="810" alt="Dashboard Screenshot 2 -Overview" src="https://github.com/user-attachments/assets/051af404-a1f4-43dc-85aa-7eecaaa2c809" />

### **Dashboard 3: Details**  
- Detailed borrower-level and loan-level view  
- Filters and slicers for granular exploration  

<img width="1316" height="810" alt="Dashboard Screenshot 3 - Details" src="https://github.com/user-attachments/assets/5e9bbff6-c65b-4837-85c3-bb5637bbd40d" />

---

## 📂 Dataset  
The dataset contains loan application records with borrower demographics, loan amounts, interest rates, DTI, and repayment history.  

---

## 🚀 Key Insights Gained  
From the analysis, I observed:  
- Loan defaults are **higher in specific loan purposes** like debt consolidation and credit card refinancing.  
- Borrowers with **higher DTI ratios and longer loan terms** show greater default risk.  
- Certain states exhibit **higher loan volumes** but also increased default probability.  
- Good vs Bad Loan KPIs help in **early identification of risky segments**.  
- Visual dashboards enabled **real-time monitoring** of MoM trends and risk profiles.  

---

## 📊 Tools & Technologies  
- **Excel** – Data cleaning, preprocessing  
- **MS SQL Server** – Querying and calculations (Good Loan %, Bad Loan %, KPIs)  
- **Power BI** – Dashboards for Summary, Overview, and Details  

---

## 📷 Sample Dashboards  
(Add exported Power BI dashboard screenshots here)  

---

## 🛠 How to Use  
1. Clone the repository  
2. Explore `financial_loan.csv` dataset  
3. Run SQL queries from `/sql_scripts` in MS SQL Server  
4. Open `Bank_Loan_Analysis.pbix` in Power BI Desktop to explore dashboards  

---

## 💡 Impact  
This project shows how **data-driven insights** can help:  
- Minimize **loan defaults**  
- Improve **profitability & stability** in banking  
- Enhance **customer trust** through fair loan approvals  

---

## 📬 Feedback & Collaboration  
I welcome suggestions and collaboration opportunities.  
If you’re working in **banking, finance, or analytics**, feel free to connect and share your thoughts!  
