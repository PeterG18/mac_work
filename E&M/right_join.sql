SELECT pp.performance_id, pp.athlete_id, pp.goals, p.athlete_name, p.Position
FROM PlayerPerformance pp
RIGHT JOIN PlayerProfile p
ON pp.athlete_id = p.athlete_id;
