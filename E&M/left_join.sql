SELECT n.deal_id, n.company, n.city_state, p.athlete_name, p.Position
FROM NIL_deals n
LEFT JOIN PlayerProfile p
ON n.athlete_id = p.athlete_id;
