-- Liste des vehicules qui ont encore des places libre dans telle ville vers telle ville
SELECT vehicule.id_vehicule, matricule,nb_place_dispo,date_voyage,heure_dep, v1.nom_ville AS depart, v2.nom_ville AS arrivee
FROM voyage
INNER JOIN ville
AS v1 ON v1.id_ville = voyage.id_ville_depart
INNER JOIN ville
AS v2 ON v2.id_ville = voyage.id_ville_arrivee
INNER JOIN vehicule
ON voyage.id_vehicule = vehicule.id_vehicule
WHERE nb_place_dispo>0 
AND (v1.nom_ville ILIKE 'Antananarivo' AND v2.nom_ville ILIKE 'Antsirabe'); 
