--les places disponibles pour une date et une ville.
SELECT nb_place,nom_ville.ville FROM vehicule 
INNER JOIN ville 
ON vehicule.id_vehicule = ville.id_ville;   
