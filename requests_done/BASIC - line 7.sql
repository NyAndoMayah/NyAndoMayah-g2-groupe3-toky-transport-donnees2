-- liste des voyages et leurs destinations
select date_voyage, heure_dep , nom_ville from voyage inner join ville on ville.id_ville = voyage.id_ville_arrivee;