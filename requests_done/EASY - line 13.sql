-- afficher toutes les reservation sur un voyage.
SELECT nom,prenom,date_reservation,place,montant_paye,v1.nom_ville AS depart,v2.nom_ville AS arrivee 
FROM reserver 
INNER JOIN client
ON client.id_client = reserver.id_client
INNER JOIN voyage
ON voyage.id_voyage = reserver.id_voyage
INNER JOIN ville
AS v1 ON v1.id_ville = voyage.id_ville_depart
INNER JOIN ville
AS v2 ON v2.id_ville = voyage.id_ville_arrivee
WHERE v2.nom_ville ILIKE 'Fianarantsoa';
