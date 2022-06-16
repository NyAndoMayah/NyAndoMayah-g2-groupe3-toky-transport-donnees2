--tous les véhicules qui ont participé à un voyage à une date précise.
SELECT matricule,date_voyage, heure_dep, v1.nom_ville as depart,v2.nom_ville as arrivee FROM voyage 
INNER JOIN ville as v1 ON voyage.id_ville_depart = v1.id_ville
INNER JOIN ville as v2 ON voyage.id_ville_arrivee = v2.id_ville
INNER JOIN vehicule
ON vehicule.id_vehicule = voyage.id_vehicule
where voyage.date_voyage = '2021-11-19'
AND vehicule.status = 'true';