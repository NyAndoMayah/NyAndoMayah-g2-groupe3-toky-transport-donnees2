-- les jours qui n'ont aucun réservation (jour de la semaine ? ou bien toutes les dates ?)
SELECT date_part('day',date_voyage) 
FROM voyage
INNER JOIN reserver
ON voyage.id_voyage =  reserver.id_voyage
WHERE voyage.date_voyage != reserver.date_reservation;