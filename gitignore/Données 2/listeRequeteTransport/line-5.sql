-- Qui est le chauffeur qui a le plus conduit pendant telle durée
SELECT id_chauffeur,count(id_chauffeur) 
AS nombre_de_voyage_conduit 
FROM conduire
INNER JOIN voyage
ON conduire.id_vehicule = voyage.id_vehicule
WHERE conduire.id_chauffeur = 8 GROUP BY id_chauffeur;
WHERE voyage.date_voyage BETWEEN '2021-10-01' AND '2022-02-01' GROUP BY id_chauffeur;