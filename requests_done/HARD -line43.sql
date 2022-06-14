--depense des vehicules apres un certain nombre de voyage fait HARD -line 43
SELECT sum(essence+maintenance) AS Depense, matricule ,count(matricule) AS nb_voyage_fait FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense
INNER JOIN voyage ON vehicule.id_vehicule = voyage.id_vehicule
WHERE vehicule.id_vehicule = 5 AND date_voyage BETWEEN '2021-11-10' AND '2021-11-15';
