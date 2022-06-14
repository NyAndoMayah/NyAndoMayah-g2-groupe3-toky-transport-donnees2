--client qui ont payés la totalité du montant MEDIUM 27
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif ;

--les réservations non payées MEDIUM/HARD 10
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye < tarif AND date_voyage > date_reservation;

--les réservations payées MEDIUM/HARD 10
SELECT montant_paye,nom,prenom FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif AND date_voyage >= date_reservation;

--revenus journaliérs MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation = current_date;

--revenu mensuels MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation BETWEEN current_date = interval '1 month ' AND current_date;

--revenu annuels MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation BETWEEN current_date = interval '12 month ' AND current_date;

--dépense d'un vehicule pendant un delai détèrminer MEDIUM 31
SELECT sum(essence+maintenance) FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense
INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule
WHERE vehicule.id_vehicule = 10 AND date_voyage BETWEEN '10-01-22' AND current_date;

-- nombre de passagers ne faisnat que la moitier des voyages MEDIUM 30
SELECT count(nom) FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif AND date_voyage = current_date;

--calcul du total d'argent entre 2 dates MEDIUM 29
SELECT sum( montant_paye)  FROM reserver WHERE date_reservation BETWEEN '10-11-2021' AND current_date;

--depense des vehicules apres un certain nombre de voyage fait HARD -line 43
SELECT sum(essence+maintenance) AS Depense, matricule ,count(matricule) AS nb_voyage_fait FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense
INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule
WHERE vehicule.id_vehicule = 5 AND date_voyage BETWEEN '2021-11-10' AND '2021-11-15';

--les date où certains voyages sont plus demander que d'autres HARD -line 11
SELECT count(date_reservation) AS nombre_de_reservation , date_voyage
FROM reserver INNER JOIN voyage ON voyage.id_voyage = reserver.id_voyage 
GROUP BY date_voyage 
ORDER BY nombre_de_reservation ;

--le nombre de voyage qu'une voiture a fait durant un delai determiner 
SELECT count(matricule),voit.id_vehicule AS voiture FROM vehicule 
INNER JOIN voyage AS voit ON vehicule.id_vehicule = voit.id_vehicule 
WHERE voit.id_vehicule =5 
AND  date_voyage BETWEEN '2021-11-10' AND '2021-11-25' GROUP BY voit.id_vehicule;


/*
L
A
K
A
R
A
*/