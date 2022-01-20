## Mission Statement ##
Caffeine Raiders is a consultant firm who is providing consultancy about the top cafés in 
College Park, MD. By analysing reviews and ratings of the top cafes across multiple review 
sites, the aim is to understand what the student’s preferences are and on what attributes the 
preferences are based on.
## Mission Objectives ## 
The objectives are:
  - Determine the full details of all reviewers that review each cafe
  - Number of unique streets the cafes are on
  - Average price of the menu items for each cafe
  - Cafes that offer Wifi, chai tea on Baltimore Ave 
  - Cafes that have at least one review on Yelp
  - Cafes that have highest review score in 2021
  - Cafes that have the highest affordability and their address
  - Reviewers that have reviewed coffee and toasts for College Park Cafes 
  - Most popular features amongst all cafes
## Data Sources ##
Our data was obtained from the following different sources:
### Reviews:
1. Yelp
2. TripAdvisor
3. Foursquare
### Location data:
1. Foursquare
➔ Taking into account the complexity of finding data with these attributes, we 
decided to use the foursquare API to gather all venues in the area. 
➔ The attributes we filtered out were in the city of College Park, and finding any 
description that contained Cafe or Coffee. 
➔ We then took the data and read it into a dataframe for further processing
➔ We gained actionable data from the API and were able to then calculate the 
distance as a convenience feature for the data
Python Script for Obtaining Venues
1. Open Script.ipynb
  a. Add your address to the address variable
2. Sign up for an account with the Foursquare API
  a. Add credentials to the Project_0503_04_Script.ipynb
3. After receiving the JSON data, filter out city, categories, latitude, and longitude 
for each venue
4. When dataFrame is obtained, you can filter out for by any column such as 
contains “Coffee” or any venue in “College Park, MD”
### Features and menu items:
1. Cafe websites
2. Yelp
References
  - https://www.yelp.com
  - https://www.tripadvisor.com
  - https://foursquare.com
  - https://developer.foursquare.com/
### Requirements
  - SQL Server Management Studio
  - LucidChart
### Files Required
1. Create-Tables.sql
  - Includes the commands for creating and dropping all the tables needed for our analysis 
like CF.Cafe, CF.Feature, CF.ProvidedFeatures, etc.
2. Insert-Values.sql
- Includes the commands for inserting all the data into each table.
3. Create-Views.sql
- Includes all the view statements which are used to answer questions about the data
## Testing Files:
1. Create-Tables.sql
2. Insert-Values.sql
3. Create-Views.sql
➔ What are the full details of all reviewers that review each cafe?
➔ How many unique streets are the cafes on?
➔ For each cafe, what is the average price of the menu items?
➔ What are the cafes that offer Wifi?
➔ Where on Baltimore Ave can I get a chai tea?
➔ Which cafes have at least one review on Yelp?
➔ Which are the cafes reviewed in 2021 which have the highest score?
➔ Which Cafes have the highest Affordability and what is their address?
➔ Which reviewers have reviewed coffee and toasts for College Park Cafes? Order the 
result by their first name.
➔ What are the most popular features amongst all cafes and with their counts?
