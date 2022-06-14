
--dépense d'un vehicule pendant un delai détèrminer MEDIUM 31
SELECT sum(essence+maintenance) FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense
INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule
WHERE vehicule.id_vehicule = 10 AND date_voyage BETWEEN '10-01-22' AND current_date;
