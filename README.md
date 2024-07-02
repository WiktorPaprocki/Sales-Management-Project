# Sales-Management-Project

## Database
Link to database: https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms
<p>Database used in project : AddventureWorksDW2022.bak
Uploaded lightweiht version of database because of too big size of the original database file.

## Business Request & User Stories
The business request for this data analyst project was an executive sales report for sales managers. 
Based on the request that was made from the business we following user stories were defined to fulfill delivery and ensure that acceptance criteria’s were maintained throughout the project.


| No # | As a (role)          | I want (request / demand)                           | So that I (user value)                                                   | Acceptance Criteria                                                   |
|------|----------------------|-----------------------------------------------------|--------------------------------------------------------------------------|-----------------------------------------------------------------------|
| 1    | Sales Manager        | To get a dashboard overview of internet sales       | Can follow better which customers and products sells the best            | A Power BI dashboard which updates data once a day                    |
| 2    | Sales Representative | A detailed overview of Internet Sales per Customers | Can follow up my customers that buys the most and who we can sell ore to | A Power BI dashboard which allows me to filter data for each customer |
| 3    | Sales Representative | A detailed overview of Internet Sales per Products  | Can follow up my Products that sells the most                            | A Power BI dashboard which allows me to filter data for each Product  |
| 4    | Sales Manager        | A dashboard overview of internet sales              | Follow sales over time against budget                                    | A Power Bi dashboard with graphs comparing sales against budget.      |

## SQL Data Cleaning, Transformation and Exploration (SQL Data Exploration.sql, SQL table queries.sql files)
To create the necessary data model for doing analysis and fulfilling the business needs defined in the user stories the following tables were extracted using SQL:
- Dim_Products,
- Dim_Customer,
- Fact_Internet_Sales
One data source (sales budgets) were provided in Excel format and were connected in the data model in a later step of the process.
<br /> I also explored the data and made a preliminary analysis in MS SQL Server.

## Power BI Dashboard (Sales Dashboard 1.pbix)
Connected to MS SQL Server and imported necessary tables into Power BI and created relationships which are shown on the screenshot below
<br /> Created Calendar Table and changed data types to proper ones
![relacje](https://github.com/WiktorPaprocki/Sales-Management-Project/assets/125204368/3c3793f1-127c-47e5-a0e8-0b6a06213275)

The finished sales management dashboard with two pages:
  1. Sales Overview
  2. Customer Details

![Sales Overview](https://github.com/WiktorPaprocki/Sales-Management-Project/assets/125204368/2d13b919-5343-4da2-85cb-41bfdc388e2a)
![Customer Details](https://github.com/WiktorPaprocki/Sales-Management-Project/assets/125204368/21d2bbf0-7c1a-445c-8040-72e3837eacfe)

