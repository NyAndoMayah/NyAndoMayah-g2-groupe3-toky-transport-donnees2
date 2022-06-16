-- lister les vehicule qui part a un certain moment
SELECT vehicule.id_vehicule, matricule, heure_dep,date_voyage,v1.nom_ville AS depart,v2.nom_ville AS arrivee 
FROM vehicule 
INNER JOIN voyage 
ON voyage.id_vehicule = vehicule.id_vehicule 
INNER JOIN ville
AS v1 ON v1.id_ville = voyage.id_ville_depart
INNER JOIN ville
AS v2 ON v2.id_ville = voyage.id_ville_arrivee
WHERE vehicule.status = 'true' AND voyage.date_voyage = '07/01/2022';