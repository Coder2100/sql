SELECT * FROM flights LIMIT 2;
SELECT * FROM flights ORDER BY duration ASC;
SELECT * FROM flights ORDER BY duration DESC;
SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;
SELECT isbn FROM reviews WHERE '0399161481' LIKE '%' || 0399161481 || '%';
