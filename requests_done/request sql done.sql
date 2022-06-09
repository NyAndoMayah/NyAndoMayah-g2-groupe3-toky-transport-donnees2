--les depenses de chaques vehicules EASY 58
SELECT matricule,essence,maintenance FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense order BY matricule;

--les infos du vehicules et ses depenses MEDIUM 44
SELECT matricule,nb_place,stat,essence,maintenance FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense order BY matricule;

--Nombre de client enregistré en une date MEDIUM 39
 SELECT count(*) FROM client INNER JOIN reserver ON client.id_client = reserver.id_client
 WHERE date_reservation = '10-01-22';

--nombre de voyage dans une ville entre 2 dates MEDIUM 38
 SELECT count(*) FROM ville INNER JOIN voyage ON ville.id_ville = voyage.id_ville_depart 
 WHERE id_ville = 1 AND date_voyage BETWEEN '10-01-22' AND '7-6-22';

--nombre de client qui reserve un voyage dans une destination precise avec l'offre premium EASY 37
 SELECT count(*)FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
 WHERE label ilike '%premium%' AND id_ville_arrivee = 5 ;

--nombre de client qui reserve un voyage dans une destination precise avec l'offre light EASY 37
 SELECT count(*)FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
 WHERE label ilike '%light%' AND id_ville_arrivee = 4 ;

--nombre de vehicules fonctionnelle EASY 36
SELECT count(*) FROM vehicule WHERE stat = true;

--les clients qui ont achetés l'offre premium BASIC 34
 SELECT nom, prenom, label FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE label ILIKE '%premium%';

--les offres pour une ville basic 32
 SELECT nom_ville, label FROM ville INNER JOIN voyage ON ville.id_ville = voyage.id_ville_depart 
INNER JOIN offre ON offre.id_offre = voyage.id_offre WHERE nom_ville ILIKE '%ANTANANARIVO%';

--client qui ont payés la totalité du montant ??????? MEDIUM 27
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif ;

--les réservations non payées ????????? MEDIUM/HARD 10
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye < tarif AND date_voyage > date_reservation;

--les réservations payées ????????? MEDIUM/HARD 10
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif AND date_voyage >= date_reservation;

--revenus journaliérs MEDIUM/HARD 15

--revenu mensuels MEDIUM/HARD 15

--revenu annuels MEDIUM/HARD 15

--dépense d'un vehicule pendant un delai détèrminer MEDIUM 31

-- nombre de passagers ne faisnat que la moitier des voyages MEDIUM 30

--calcul du total d'argent entre 2 dates MEDIUM 29