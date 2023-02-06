# w3-database-proyecto

1. Create copies to save our original data.


2. Get rid of unnecessary data or columns. 
- original_language_id
- language_id
- last_update
- language TABLE !


3. bring the datatypes into a reasonable format. 
- rental_date, release year into datetime[64]
- numerical values into integers etc. 

4. Deploy a new table relation. 
- drop unnecessary columns from old_HDD
- turn it into a connector table

--- show sql eer diagram ---

# Queries !

- set up connection to sql via python. 

1. What is the most rented movie ? 
- coast rainbow

2. What is the most rented actor ?
- rip crawford	

3. average rent span
- 5 days 

4. most rented movie category 
- documentary 

5. least rented movie category
- horror, Games, children

6. best salesperson
- Staff with the id = 2

7. average rented units per customers 
- 1.7 

8. average rental price per customer 
- 5€

