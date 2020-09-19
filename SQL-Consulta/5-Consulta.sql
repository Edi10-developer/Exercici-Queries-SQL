SELECT uniqueCarrier, colYear, colMonth, 
       avg(ArrDelay) as avg_delay, 
       sum(cancelled) as total_cancelled
FROM flights
WHERE cancelled = 1
GROUP BY UniqueCarrier, colyear, colMonth
ORDER BY total_cancelled DESC, colyear
LIMIT 11;
