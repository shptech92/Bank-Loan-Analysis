
USE [Bank Loan DB]

SELECT * FROM bank_loan_data;

SELECT COUNT(id) as Total_Loan_Applications FROM bank_loan_data;

SELECT COUNT(id) as MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT COUNT(id) as PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;


SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;


SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT SUM(total_payment) AS MTD_Toatl_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT SUM(total_payment) AS PMTD_Toatl_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(int_rate),4) * 100 AS MTD_Avg_Interest_Rate  FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(int_rate),4) * 100 AS PMTD_Avg_Interest_Rate  FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;


SELECT ROUND(AVG(dti),4) * 100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT 
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
    /
    COUNT(id) AS Good_loan_percentage
FROM bank_loan_data;

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT
     (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0)/
     COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data


SELECT 
    ROUND(
        (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
        COUNT(id), 
    2) AS Bad_Loan_Percentage
FROM bank_loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(total_payment) AS Bad_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status = 'Charged Off'


SELECT
     loan_status,
     COUNT(id) AS LoanCount,
     SUM(total_payment) AS Toatl_Amount_Received,
     SUM(loan_amount) AS Total_Funded_Amount,
     AVG(int_rate * 100) AS Interest_Rate,
     AVG(dti * 100) AS DTI
FROM
     bank_loan_data
Group BY
     loan_status

SELECT COUNT(id) AS Good_Loan_Appliactions  FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(loan_amount) AS Good_Loan_Appliactions  FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(total_payment) AS Bad_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status = 'Charged Off'


SELECT 
      loan_status,
      COUNT(id) AS Total_Loan_applications,
      SUM(total_payment) AS Total_Amount_received,
      SUM(loan_amount) AS Total_Funded_Amount,
      AVG(int_rate * 100) AS Interset_Rate,
      AVG(dti * 100) AS DTI
FROM
      bank_loan_data
Group BY 
      loan_status;

SELECT 
      address_state,
      COUNT(id) AS total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY COUNT(id) DESC;


SELECT 
      term,
      COUNT(id) AS total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term DESC;


SELECT * FROM bank_loan_data;

SELECT 
     emp_length,
      COUNT(id) AS total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

SELECT 
      purpose,
      COUNT(id) AS total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC;

SELECT 
      home_ownership,
      COUNT(id) AS total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
WHERE grade = 'A' AND address_state = 'CA'
GROUP BY home_ownership
ORDER BY COUNT(id) DESC;



SELECT * FROM bank_loan_data;

SELECT
     DATENAME(MONTH, issue_date) AS Month_Name,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY DATENAME(MONTH, issue_date)
ORDER BY DATENAME(MONTH, issue_date)

SELECT 
      MONTH(issue_date) AS Month_Number,
      DATENAME(MONTH, issue_date) AS Month_Name,
      COUNT(id) AS Total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
      FROM bank_loan_data
      GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date) 
      ORDER BY MONTH(issue_date)

SELECT 
      address_state,
      COUNT(id) AS Total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC

SELECT 
      address_state,
      COUNT(id) AS Total_Loan_Applications,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY COUNT(id) DESC


SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

SELECT * FROM bank_loan_data;

-- Total Loan Applications

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data;

-- MTD Loan Applications

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12

--PMTD Loan Applications

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11

--Total Funded Amount

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data

SELECT
     term,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT * FROM bank_loan_data;

SELECT
    emp_length,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

SELECT
    emp_length,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) DESC

SELECT
    purpose,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC

SELECT
    home_ownership,
     COUNT(id) AS Total_Loan_Applications,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
WHERE grade = 'A' AND address_state = 'CA'
GROUP BY home_ownership
ORDER BY COUNT(id) DESC

