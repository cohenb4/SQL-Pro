DROP TABLE IF EXISTS [CF.Review] 
DROP TABLE IF EXISTS [CF.ReviewSource] 
DROP TABLE IF EXISTS [CF.Reviewer]
DROP TABLE IF EXISTS [CF.Prepares] 
DROP TABLE IF EXISTS [CF.ItemDetails]
DROP TABLE IF EXISTS [CF.ProvidedFeatures]
DROP TABLE IF EXISTS [CF.Feature] 
DROP TABLE IF EXISTS [CF.Cafe]
CREATE TABLE [CF.Cafe] (
cafeID CHAR(8) NOT NULL, 
cafeName VARCHAR(50), 
cafeType VARCHAR(50), 
cafeAffordability DECIMAL (2, 1), 
cafeStreet VARCHAR(20), 
cafeLat DECIMAL(8,6), 
cafeLong DECIMAL(8,6), 
cafeZipCode CHAR(5), 
CONSTRAINT pk_cafe_cafeID PRIMARY KEY (cafeID)
) 
CREATE TABLE [CF.Feature] (
featureID CHAR(8) NOT NULL, 
featureName VARCHAR(20), 
CONSTRAINT pk_feature_featureID PRIMARY KEY (featureID)
) 
CREATE TABLE [CF.ProvidedFeatures] (
cafeID CHAR(8) NOT NULL, 
featureID CHAR(8) NOT NULL, 
CONSTRAINT pk_providedfeatures PRIMARY KEY (cafeID, featureID), 
CONSTRAINT fk_providedfeatures_cafeID FOREIGN KEY (cafeID) 
REFERENCES [CF.Cafe] (cafeID) ON UPDATE CASCADE ON DELETE NO ACTION, 
CONSTRAINT fk_providedfeatures_featureID FOREIGN KEY (featureID) 
REFERENCES [CF.Feature] (featureID) ON UPDATE CASCADE ON DELETE NO 
ACTION
) 
CREATE TABLE [CF.ItemDetails] (
itemID CHAR(8) NOT NULL, 
itemName VARCHAR(20), 
CONSTRAINT pk_itemdetails_itemID PRIMARY KEY (itemID)
) 
CREATE TABLE [CF.Prepares] (
cafeID CHAR(8) NOT NULL, 
itemID CHAR(8) NOT NULL, 
itemPrice DECIMAL (5, 2), 
CONSTRAINT pk_prepares PRIMARY KEY (cafeID, itemID), 
CONSTRAINT fk_prepares_cafeID FOREIGN KEY (cafeID) 
REFERENCES [CF.Cafe] (cafeID) ON UPDATE CASCADE ON DELETE NO ACTION, 
CONSTRAINT fk_prepares_itemID FOREIGN KEY (itemID) 
REFERENCES [CF.ItemDetails] (itemID) ON UPDATE NO ACTION ON DELETE NO 
ACTION
) 
CREATE TABLE [CF.Reviewer] (
reviewerID CHAR(8) NOT NULL, 
reviewerFName VARCHAR(20), 
reviewerLName VARCHAR(20),
CONSTRAINT pk_reviewer_reviewerID PRIMARY KEY (reviewerID)
) 
CREATE TABLE [CF.ReviewSource] (
sourceID CHAR(8) NOT NULL, 
reviewSource VARCHAR(20), 
CONSTRAINT pk_reviewsource_sourceID PRIMARY KEY (sourceID)
) 
CREATE TABLE [CF.Review] (
cafeID CHAR(8) NOT NULL, 
sourceID CHAR(8) NOT NULL,
reviewerID CHAR(8) NOT NULL,
reviewDatePosted DATE, 
reviewText VARCHAR(1000),
reviewScore DECIMAL(2,1), 
CONSTRAINT pk_reviewdetails PRIMARY KEY (cafeID, sourceID, reviewerID), 
CONSTRAINT fk_reviewdetails_sourceID FOREIGN KEY (sourceID) 
REFERENCES [CF.ReviewSource] (sourceID) ON UPDATE CASCADE ON DELETE NO 
ACTION, 
CONSTRAINT fk_reviewdetails_reviewerID FOREIGN KEY (reviewerID) 
REFERENCES [CF.Reviewer] (reviewerID) ON UPDATE NO ACTION ON DELETE 
CASCADE, 
CONSTRAINT fk_reviewdetails_cafeID FOREIGN KEY (cafeID) 
REFERENCES [CF.Cafe] (cafeID) ON UPDATE CASCADE ON DELETE CASCADE
) 
