-- tous les véhicules qui ont participé à un voyage à une date précise.
SELECT matricule,date_voyage, heure_dep, id_ville_depart, id_ville_arrivee FROM vehicule 
INNER JOIN voyage 
ON vehicule.id_vehicule = voyage.id_vehicule
INNER JOIN ville
ON voyage.id_ville_depart = ville.id_ville
AND voyage.id_ville_arrivee = ville.id_ville
where voyage.date_voyage = '2021-11-19'
AND vehicule.status = 'true';