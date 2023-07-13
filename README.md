# Sales-Management-Project

## Business Request & User Stories
The business request for this data analyst project was an executive sales report for sales managers. 
Based on the request that was made from the business we following user stories were defined to fulfill delivery and ensure that acceptance criteria’s were maintained throughout the project.


| No # | As a (role)          | I want (request / demand)                           | So that I (user value)                                                   | Acceptance Criteria                                                   |
|------|----------------------|-----------------------------------------------------|--------------------------------------------------------------------------|-----------------------------------------------------------------------|
| 1    | Sales Manager        | To get a dashboard overview of internet sales       | Can follow better which customers and products sells the best            | A Power BI dashboard which updates data once a day                    |
| 2    | Sales Representative | A detailed overview of Internet Sales per Customers | Can follow up my customers that buys the most and who we can sell ore to | A Power BI dashboard which allows me to filter data for each customer |
| 3    | Sales Representative | A detailed overview of Internet Sales per Products  | Can follow up my Products that sells the most                            | A Power BI dashboard which allows me to filter data for each Product  |
| 4    | Sales Manager        | A dashboard overview of internet sales              | Follow sales over time against budget                                    | A Power Bi dashboard with graphs comparing sales against budget.      |

## Excel Data Cleaning - (Dim_Customer - data cleaning.xlsx)
Cleaned Dim_Customer table in Microsoft Excel:
- removed unnecessary columns
- checked if there was any duplicates in table - no duplciates found
- replaced M to Married and S to Single in MaritalStatus column
- Replaced M to Male and F to Female in Gender column
- imported Dim_Customer_Cleaned table into MS SQL Server




## SQL Data Cleansing, Transformation and Exploration (SQL Data Exploration.sql, SQL table queries.sql files)
To create the necessary data model for doing analysis and fulfilling the business needs defined in the user stories the following tables were extracted using SQL (Dim_Calendar, Dim_Products, Dim_Customer, Fact_Internet_Sales).
I also explored the data and made a preliminary analysis.
One data source (sales budgets) were provided in Excel format and were connected in the data model in a later step of the process.

## Power BI Dashboard (Sales Dashboard 1.pbix)
screen
