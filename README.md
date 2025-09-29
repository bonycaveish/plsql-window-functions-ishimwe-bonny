# Rugali Coffee – PL/SQL Window Functions Assignment

## Project Overview  
This project demonstrates the use of **PL/SQL window functions** to analyze business data for **Rugali Coffee**, a specialty coffee company in Rwanda.  
The goal is to show how ranking, aggregate, navigation, and distribution functions can provide **useful insights for decision-making**.



##  Business Problem  
Rugali Coffee records customer transactions across multiple regions.  
Management faces challenges in quickly answering important questions, such as:  
- Which products generate the most revenue?  
- How are monthly sales changing over time?  
- Who are the highest and lowest spending customers?  

Without advanced analytics, decisions on **marketing, promotions, and inventory planning** are difficult.  
By applying **window functions**, we can solve these problems with clear, data-driven insights.



## Objectives / Success Criteria  
The main success goals of this project are:  
1. Identify **top 5 products per region** using ranking functions.  
2. Calculate **running monthly sales totals** with aggregate functions.  
3. Measure **month-over-month sales growth** using navigation functions.  
4. Segment customers into **quartiles** with distribution functions.  
5. Generate a **3-month moving average** of sales for trend forecasting.  


##  Database Schema  
Three related tables were designed:

**1. customers**  
- `customer_id` (PK)  
- `name`  
- `region`  

**2. products**  
- `product_id` (PK)  
- `product_name`  
- `category`  

**3. transactions**  
- `transaction_id` (PK)  
- `customer_id` (FK → customers)  
- `product_id` (FK → products)  
- `sale_date`  
- `amount`  
ER Diagram (simplified):  
