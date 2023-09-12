# Final Project Virtual Internship Experience Kimia Farma x Rakamin Academy
In this final project, a sales dataset is provided, namely sales, sales_ds, customers, customer_ds, goods and goods_ds (but not attached for publication because it is not permitted and is confidential)
1. Data Cleaning
   In the process, the data was cleaned first using Microsoft Excel, namely several columns whose format was changed to numbering, namely:
   the price and brand_code columns in the goods_ds table, then the number of_items and price columns in the sales_ds table
2. Import data into Google Big Query
3. Define the primary sales table because there are no unique columns by doing a CONCAT between the invoice_id and item_id columns
4. Create a sales base table by querying certain columns in the sales_ds, customer_ds and goods_ds tables
5. Create an aggregate daily sales table
6. Create a sales dashboard with Google Data Studio / Looker Studio. Link : https://lookerstudio.google.com/u/0/reporting/8ba67cd0-bf13-43b6-8648-7b81f7c820c2/page/tEnnC
