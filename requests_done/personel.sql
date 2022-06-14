--le nombre de voyage qu'une voiture a fait durant un delai determiner 
SELECT count(matricule),voit.id_vehicule AS voiture FROM vehicule 
INNER JOIN voyage AS voit ON vehicule.id_vehicule = voit.id_vehicule 
WHERE voit.id_vehicule =5 
AND  date_voyage BETWEEN '2021-11-10' AND '2021-11-25' GROUP BY voit.id_vehicule;