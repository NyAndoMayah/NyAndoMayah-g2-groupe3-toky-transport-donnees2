-- liste des voyages et leurs destinations
SELECT date_voyage, heure_dep , V1.nom_ville as depart, V2.nom_ville as arrivee
FROM voyage 
INNER JOIN ville 
as V1 ON V1.id_ville = voyage.id_ville_depart
INNER JOIN ville
as V2 ON V2.id_ville = voyage.id_ville_arrivee;
