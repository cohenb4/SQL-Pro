--Drop the views if they exist
DROP VIEW IF EXISTS [Reviewer Details]
DROP VIEW IF EXISTS [Unique Streets]
DROP VIEW IF EXISTS [Average Price]
DROP VIEW IF EXISTS [Cafes With Wifi]
DROP VIEW IF EXISTS [Chai Tea Baltimore Ave]
DROP VIEW IF EXISTS [Review Source as Yelp]
DROP VIEW IF EXISTS [Cafes reviewed in 2021 with Score 5]
DROP VIEW IF EXISTS [Affordable Cafe]
DROP VIEW IF EXISTS [Reviewers for Coffee Toast]
DROP VIEW IF EXISTS [Popular Cafe Feature]
GO
--1. What are the full details of all reviewers that review each cafe?
CREATE VIEW [Reviewer Details] AS
SELECT rr.*, c.cafeName
FROM [CF.Cafe] c, [CF.Review] r, [CF.Reviewer] rr
WHERE c.cafeID = r.cafeID 
AND r.reviewerID = rr.reviewerID
GO
--2. How many unique streets are the cafes on?
CREATE VIEW [Unique Streets] AS
SELECT COUNT(DISTINCT c.cafeStreet) AS 'cafeStreets'
FROM [CF.Cafe] c 
GO
--3. For each cafe, what is the average price of the menu items?
CREATE VIEW [Average Price] AS
SELECT TOP 10 c.cafeName, AVG(p.itemPrice) AS 'Average Price'
FROM [CF.Prepares] p, [CF.Cafe] c
WHERE c.cafeID = p.cafeID
GROUP BY c.cafeName
ORDER BY 'Average Price'
GO
--4. What are the cafes that offer Wifi?
CREATE VIEW [Cafes With Wifi] AS
SELECT c.cafeName, f.featureName
FROM [CF.Cafe] c, [CF.Feature] f, [CF.ProvidedFeatures] pf
WHERE c.cafeID = pf.cafeID 
AND pf.featureID = f.featureID 
AND f.featureName = 'Offers Wifi'
GO
--5. Where on Baltimore Ave can I get a chai tea?
CREATE VIEW [Chai Tea Baltimore Ave] AS
SELECT c.cafeName, c.cafeStreet, i.itemName
FROM [CF.Cafe] c, [CF.ItemDetails] i, [CF.Prepares] p
WHERE c.cafeID = p.cafeID 
AND p.itemID = i.itemID
AND c.cafeStreet = 'Baltimore Ave'
AND i.itemName = 'Chai Tea'
GO
--6. Which cafes have a tleast one review on Yelp?
CREATE VIEW [Review Source as Yelp] AS
SELECT c.cafeName
FROM [CF.Cafe] c
WHERE c.cafeID IN (
SELECT rd.cafeID
FROM [CF.Review] rd, [CF.ReviewSource] rs
WHERE rd.sourceID = rs.sourceID AND rs.reviewSource = 'Yelp'
)
GO
--7. Which are the cafes reviewed in 2021 which have the highest score?
CREATE VIEW [Cafes reviewed in 2021 with Score 5] AS
SELECT DISTINCT c.cafeName
FROM [CF.Cafe] as c, [CF.Review] as r
WHERE c.cafeID = r.cafeID
AND (r.reviewDatePosted > '20210101' AND r.reviewScore>4)
GO
--8. Which Cafes have the highest Affordability and what is their address?
CREATE VIEW [Affordable Cafe] AS 
SELECT c.cafeID, c.cafeName, c.cafeStreet, c.cafeZipCode
FROM [CF.Cafe] c
WHERE c.cafeAffordability IN (
SELECT MAX(cf.cafeAffordability) 
FROM [CF.Cafe] cf
)
GO
--9. Which reviewers have reviewed coffee and toasts for College Park Cafes? Order 
the result by their first name.
CREATE VIEW [Reviewers for Coffee Toast] AS
SELECT rw.*
FROM [CF.Review] rd, [CF.Reviewer] rw
WHERE (rd.reviewText LIKE '%coffee%' OR rd.reviewText LIKE '%toast%' ) 
AND rw.reviewerID = rd.reviewerID
GO
--10. What are the most popular features amongst all cafes and with their counts?
CREATE VIEW [Popular Cafe Feature] AS
SELECT TOP 5 ft.featureName AS 'Feature Name', count(ft.featureID) AS 'Number
of Cafes'
FROM [CF.Cafe] cf, [CF.Feature] ft, [CF.ProvidedFeatures] pf
WHERE cf.cafeID = pf.cafeID 
AND ft.featureID = pf.featureID
GROUP BY ft.featureName
ORDER BY [Number of Cafes] DESC
GO
-- SELECT VIEWS 
SELECT * FROM [Reviewer Details]
SELECT * FROM [Unique Streets]
SELECT * FROM [Average Price]
SELECT * FROM [Cafes With Wifi]
SELECT * FROM [Chai Tea Baltimore Ave]
SELECT * FROM [Review Source as Yelp]
SELECT * FROM [Cafes reviewed in 2021 with Score 5]
SELECT * FROM [Affordable Cafe]
SELECT * FROM [Reviewers for Coffee Toast] 
SELECT * FROM [Popular Cafe Feature]
