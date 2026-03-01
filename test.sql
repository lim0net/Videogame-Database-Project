SELECT P.Gname AS PlatformName, COUNT(*) AS GameCount
FROM Platforms P
JOIN Games G ON P.PlatID = G.PlatID
GROUP BY P.Gname
ORDER BY GameCount DESC;