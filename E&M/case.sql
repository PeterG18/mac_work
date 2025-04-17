SELECT 
    athlete_id,
    goals,
    CASE 
        WHEN goals >= 5 THEN 'Excellent'
        WHEN goals BETWEEN 3 AND 4 THEN 'Good'
        WHEN goals BETWEEN 1 AND 2 THEN 'Average'
        ELSE 'Poor'
    END AS performance_level
FROM PlayerPerformance;
