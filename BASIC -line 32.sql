--les offres pour une ville
 SELECT nom_ville, label FROM ville INNER JOIN voyage ON ville.id_ville = voyage.id_ville_depart 
INNER JOIN offre ON offre.id_offre = voyage.id_offre WHERE nom_ville ILIKE '%ANTANANARIVO%';
