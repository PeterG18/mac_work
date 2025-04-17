SELECT SUM(age) as ageSummed,
		SUM(distinct age) as diffAgeSummed
FROM EquiPlay.PlayerProfile;