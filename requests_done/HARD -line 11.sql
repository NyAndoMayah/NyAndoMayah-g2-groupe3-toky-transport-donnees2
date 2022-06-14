--les date où certains voyages sont plus demander que d'autres HARD -line 11
SELECT count(date_reservation) AS nombre_de_reservation , date_voyage
FROM reserver INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
GROUP BY date_voyage 
ORDER BY nombre_de_reservation ;