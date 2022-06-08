--les clients qui ont achetés l'offre premium
 SELECT nom, prenom, label FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE label ILIKE '%premium%';
