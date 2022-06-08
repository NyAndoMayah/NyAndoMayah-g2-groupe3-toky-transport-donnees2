--nombre de client qui reserve un voyage dans une destination precise avec l'offre premium
 SELECT count(*)FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
 WHERE label ilike '%premium%' AND id_ville_arrivee = 5 ;