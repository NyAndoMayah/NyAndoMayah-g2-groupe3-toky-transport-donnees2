--calcul du total d'argent entre 2 dates MEDIUM 29
SELECT sum( montant_paye)  FROM reserver WHERE date_reservation BETWEEN '10-11-2021' AND current_date;
