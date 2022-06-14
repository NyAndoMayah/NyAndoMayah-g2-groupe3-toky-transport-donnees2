
--dépense d'un vehicule pendant un delai détèrminer MEDIUM 31
SELECT sum(essence,maintenance), matricule FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense WHERE id_vehicule = 10;