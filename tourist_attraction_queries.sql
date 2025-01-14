-- Total number of visitors to attractions in 5 years

SELECT AttractionName, sum(VisitorCount) as TotalVisits
FROM Attractions a JOIN Visitors v ON a.AttractionId=v.AttractionId
GROUP BY AttractionName
ORDER BY sum(VisitorCount) DESC;


-- Change In The Number Of Attraction Visitors Over The Years


SELECT VisitDate, sum(VisitorCount) as TotalVisits
FROM Visitors 
GROUP BY VisitDate
ORDER BY VisitDate ASC;


-- The 5 most visited attractions in the Coronavirus year of 2020


SELECT AttractionName, VisitorCount as TotalVisits
FROM Attractions a JOIN Visitors v ON a.AttractionId=v.AttractionId
WHERE VisitDate = 2020
ORDER BY VisitorCount DESC
LIMIT 5;


-- Attractions with the highest average rating score over 5 years

SELECT AttractionName, avg(RatingScore) as AverageRatingScore
FROM Attractions a JOIN Ratings r ON a.AttractionId=r.AttractionId
GROUP BY AttractionName
ORDER BY avg(RatingScore) DESC;


-- Continents with the highest number of attraction visitors

SELECT Continent, sum(VisitorCount) as TotalVisits
FROM Countries c JOIN Attractions a ON c.CountryId=a.CountryId
JOIN Visitors v ON a.AttractionId=v.AttractionId
GROUP BY Continent
ORDER BY sum(VisitorCount) DESC;


-- Attraction types with the highest number of visitors

SELECT AttractionType, sum(VisitorCount) as TotalVisits
FROM Attractions a JOIN Visitors v ON a.AttractionId=v.AttractionId
GROUP BY AttractionType
ORDER BY sum(VisitorCount) DESC;

