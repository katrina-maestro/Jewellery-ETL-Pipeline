SELECT *  FROM cleaned_dataset LIMIT 5 ;	
	
-- Purchasing information
DROP VIEW IF EXISTS Purchasing_Information;
CREATE VIEW Purchasing_Information AS
SELECT CustomerID ,Age, Gender, Location, ProductType, PurchaseCount, AveragePurchaseValue, TotalSpend
FROM cleaned_dataset; 

-- Finance information
DROP VIEW IF EXISTS Financial_Information;
CREATE VIEW Financial_Information AS
SELECT CustomerID ,Age, Gender, Location, ProductType, ROI, OperatingExpenses, AdditionalCosts, GrossProfit, GrossProfitMargin, OperatingProfit, OperatingProfitMargin, NetProfit, NetProfitMargin,ProductCost
FROM cleaned_dataset;

-- Customer Shopping Habits 
DROP VIEW IF EXISTS Customer_Shopping_Habits;
CREATE VIEW Customer_Shopping_Habits AS
SELECT CustomerID ,Age, Gender, Location, ProductType, PurchaseCount, AveragePurchaseValue, TotalSpend, NumberOfTransactions, LastPurchaseDate, CompletionRate,SubscriptionStartDate,SubscriptionEndDate
FROM cleaned_dataset;

