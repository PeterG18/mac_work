SELECT athlete_id, athlete_name AS info
FROM PlayerProfile
UNION
SELECT athlete_id, city_state AS info
FROM NIL_deals;
