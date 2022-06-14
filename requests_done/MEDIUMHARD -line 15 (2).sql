--revenu mensuels MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation BETWEEN current_date = interval '1 month ' AND current_date;
