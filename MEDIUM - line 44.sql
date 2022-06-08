--les infos du vehicules et ses depenses 
SELECT matricule,nb_place,stat,essence,maintenance FROM vehicule INNER JOIN recevoir ON vehicule.id_vehicule = recevoir.id_vehicule
INNER JOIN depense ON depense.id_depense = recevoir.id_depense order BY matricule;
