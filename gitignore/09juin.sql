-- select sur un seul table
-- alias AS
select id_voyage, date_voyage, heure_dep, v1.nom_ville as depart, v2.nom_ville as arrivee from voyage inner join ville as v1 on voyage.id_ville_depart = v1.id_ville inner join ville as v2 on voyage.id_ville_arrivee = v2.id_ville;

-- compter le nombre de voyage
-- having == where
select date_voyage, count(*) as nb_voyage from voyage group by date_voyage having count(*) > 7;