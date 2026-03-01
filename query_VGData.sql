--Top 3 most owned games
SELECT G.Gname, COUNT(*) AS OwnershipCount
FROM Games G
JOIN PlayerGameOwnership PGO ON G.GID = PGO.GID
GROUP BY G.Gname
ORDER BY OwnershipCount DESC
FETCH FIRST 3 ROWS ONLY;


--Top 5 games with the lowest rating
SELECT G.Gname, R.Rating
FROM Games G
JOIN GameRatings R ON G.GID = R.GID
ORDER BY R.Rating ASC
FETCH FIRST 5 ROWS ONLY;


--Games ran on the Playstation 4
SELECT G.Gname
FROM Games G
JOIN Platforms P ON G.PlatID = P.PlatID
WHERE P.PlatID = 4;


--Top 2 Games made by Blizzard Entertainment that have made the most revenue
SELECT G.Gname, S.revenue
FROM Games G
JOIN Developers D ON G.DevID = D.DevID
JOIN GameSales S ON G.GID = S.GID
WHERE D.DevID = 7
ORDER BY S.revenue DESC
FETCH FIRST 2 ROWS ONLY;


--Top 5 Games by revenue
SELECT G.Gname, S.revenue
FROM Games G
JOIN GameSales S ON G.GID = S.GID
ORDER BY S.revenue DESC
FETCH FIRST 5 ROWS ONLY;


--The game made by Epic Games that have sold the most units
SELECT G.Gname, S.unitsSold
FROM Games G
JOIN Developers D ON G.DevID = D.DevID
JOIN GameSales S ON G.GID = S.GID
WHERE D.DevID = 6
ORDER BY S.unitsSold DESC
FETCH FIRST 1 ROW ONLY;


--Top 5 Players with the most hours played in the USA 
SELECT P.Pname, P.TotalHoursPlayed
FROM Players P
WHERE P.PCountry = 'USA'
ORDER BY P.TotalHoursPlayed DESC
FETCH FIRST 5 ROWS ONLY;


--Oldest Game Developers
SELECT D.Dname, D.yearFounded
FROM Developers D
ORDER BY D.yearFounded ASC
FETCH FIRST 5 ROWS ONLY;


--Games Released After 2019
SELECT G.Gname, G.releaseDate
FROM Games G
WHERE G.releaseDate > TO_DATE('2019-01-01', 'YYYY-MM-DD');


--Average Game Rating by Developer
SELECT D.Dname, ROUND(AVG(R.Rating), 2) AS AvgRating
FROM Developers D
JOIN Games G ON D.DevID = G.DevID
JOIN GameRatings R ON G.GID = R.GID
GROUP BY D.Dname
ORDER BY AvgRating DESC;

--Total Games per Platform
SELECT P.Gname AS PlatformName, COUNT(*) AS GameCount
FROM Platforms P
JOIN Games G ON P.PlatID = G.PlatID
GROUP BY P.Gname
ORDER BY GameCount DESC;

spool off