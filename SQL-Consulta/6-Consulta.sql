SELECT tailNum, SUM(distance) AS totalDistance
FROM flights
WHERE tailNum <> ''
GROUP BY tailNum
ORDER BY totalDistance DESC
LIMIT 10;