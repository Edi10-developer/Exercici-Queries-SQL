SELECT city, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
FROM flights
INNER JOIN airports 
ON flights.origin = airports.iata
GROUP BY city , colMonth , colYear
ORDER BY city , colYear , colMonth
LIMIT 24;