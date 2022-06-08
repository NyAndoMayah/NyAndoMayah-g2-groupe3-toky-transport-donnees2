--nombre de voyage dans une ville entre 2 dates
 SELECT count(*) FROM ville INNER JOIN voyage ON ville.id_ville = voyage.id_ville_depart 
 WHERE id_ville = 1 AND date_voyage BETWEEN '10-01-22' AND '7-6-22';
