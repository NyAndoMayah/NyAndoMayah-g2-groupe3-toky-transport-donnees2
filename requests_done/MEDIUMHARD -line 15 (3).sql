--revenu annuels MEDIUM/HARD 15
SELECT sum( montant_paye) FROM reserver WHERE date_reservation BETWEEN current_date = interval '12 month ' AND current_date;
