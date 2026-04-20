Eco Essentials Data Warehousing Journey

For this project, we learned the necessary skils to build a data warehouse as data managment consultants.

Ecosessentials is an eco-friendly cookware company looking for help creating a data warehouse they can use to store and access their data. The first step in helping the company was to design the data warehouse for them. This involved putting together an ERD, defining the grain, and assigning data to fact and dimension coloumns.

After we decided the best way to organize the data, we extracted the data from an S3 bucket, loaded in into Snowflake landing tables, and then transformed the data into dimensional models using DBT cloud. This process took the longest, as we had to create the code for each table and make sure it ran properly. Once our dimensional model looked good in Snowflake, we added tests to each of the tables. The tests we used are:
- unique
- not_null
- accepted_values
- relationships.
Once these tests ran sucessfully, we set up a job for our model that is scheduled to run daily in Fivetran.

The final step to our project was using our model to analyze the data using 


### Using the starter project

Try running the following commands:
- dbt run
- dbt test

