Eco Essentials Data Warehousing Journey

For this project, we learned the necessary skills to build a data warehouse as data management consultants.

Ecosessentials is an eco-friendly cookware company looking for help creating a data warehouse they can use to store and access their data. The first step in helping the company was to design the data warehouse for them. This involved putting together an ERD, defining the grain, and assigning data to fact and dimension columns.

After we decided the best way to organize the data, we extracted the data from an S3 bucket, loaded it into Snowflake landing tables, and then transformed the data into dimensional models using DBT Cloud. This process took the longest, as we had to create the code for each table and make sure it ran properly. Once our dimensional model looked good in Snowflake, we added tests to each of the tables. The tests we used are:
- unique
- not_null
- accepted_values
- relationships.
Once these tests ran successfully, we set up a job for our model that is scheduled to run daily in Fivetran.

The final step of our project was using our model to analyze the data. We used Tableau and found two important discoveries. The first is that some holiday-related email campaigns are being sent randomly, rather than around the holiday. For example, the Earth Day Special sent out emails in January, when Earth Day is in April. This can be confusing to consumers, who may ignore these emails as spam when the dates don't align with the holiday.

The second important discovery is that the number of emails being sent out does not match how many campaigns are scheduled for each month. Some of the more campaign-heavy months, such as April, have some of the lowest email events. The company should consider increasing the number of emails sent during these months to try to capture a larger customer base.




