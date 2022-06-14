--revenus journaliérs MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation = current_date;
