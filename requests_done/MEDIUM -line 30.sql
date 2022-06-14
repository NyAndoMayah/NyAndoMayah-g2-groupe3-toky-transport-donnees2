
-- nombre de passagers ne faisnat que la moitier des voyages MEDIUM 30
SELECT count(nom) FROM client INNER JOIN reserver ON client.id_client = reserver.id_client 
INNER JOIN voyage ON reserver.id_voyage = voyage.id_voyage
INNER JOIN offre ON offre.id_offre = voyage.id_offre 
WHERE montant_paye = tarif AND date_voyage = current_date;
