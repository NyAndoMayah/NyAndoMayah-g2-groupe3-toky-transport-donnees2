-- afficher tous les vehicules qui peuvent etre utilisés pour un voyage (notion de "utilisable" à développer)

SELECT vehicule.id_vehicule,vehicule.matricule FROM vehicule INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule WHERE date_voyage = DATE(NOW());

--les voitures complets (pour un voyage  ?)

SELECT id_vehicule FROM voyage WHERE nb_places_dispo = 0;

--afficher les voyages du jour de classe light/prémium avec leurs heures de départ.

SELECT voyage.id_voyage,heure_dep FROM voyage INNER JOIN offre ON voyage.id_offre = offre.id_offre WHERE offre.label='premium' ;

--Liste des vehicules actifs par jours

SELECT vehicule.id_vehicule FROM voyage INNER JOIN vehicule 
ON voyage.id_vehicule = vehicule.id_vehicule WHERE vehicule.status = 'true' AND voyage.date_voyage = DATE(NOW());

--Les clients qui ont reservé un voyage vers Antsiranana avec comme ville de départ Antsirabe. (ou d'autres villes en fait)

SELECT client.id_client, client.nom, client.prenom, client.cin, client.contact FROM client INNER JOIN reserver ON client.id_client = reserver.id_client INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage WHERE id_ville_depart=6 AND id_ville_arrivee = 2;

--le nombre de voiture en panne (à l'heure actuelle ?)

SELECT * FROM vehicule INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_voyage WHERE vehicule.status = 'false' AND voyage.date_depart = DATE(NOW());

--Combien de voyages ont été effectués tel ou tel jour, à tel ou tel endroit

SELECT COUNT(voyage.id_voyage) FROM voyage WHERE voyage.date_voyage = '20/04/2022' AND voyage.id_ville_arrivee=1;

--Avoir le numéro du chauffeur qui conduisait le vehicule avec le matricule (Matricule) le (date)

SELECT chauffeur.id_chauffeur,chauffeur.contact FROM chauffeur INNER JOIN conduire ON chauffeur.id_chauffeur = conduire.id_chauffeur INNER JOIN  vehicule ON vehicule.id_vehicule = conduire.id_vehicule INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule WHERE vehicule.matricule ='5079TBQ' AND voyage.date_voyage = '16/10/2021' 

-- aficher toutes les depenses de chaque véhicule

SELECT vehicule.id_vehicule,depense.essence*4100 AS essence,depense.maintenance,depense.essence*4100+depense.maintenance
AS total_depense
FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON recevoir.id_depense = depense.id_depense;

--les passagers les plus fréquents (pour les prix ou offres)

SELECT * FROM (SELECT client.id_client,COUNT(reserver.id_client) AS occurence
FROM reserver INNER JOIN client  ON reserver.id_client = client.id_client
GROUP BY client.id_client ORDER BY  occurence DESC) AS tableau LIMIT 1 ;