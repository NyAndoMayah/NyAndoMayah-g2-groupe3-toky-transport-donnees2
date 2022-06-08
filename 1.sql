--les depenses de chaques vehicules
SELECT matricule,essence,maintenance FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense order BY matricule;
