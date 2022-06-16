-- Creation de la BDD
CREATE DATABASE films;

-- Après connexion à la base de données
-- \c films

-- contrainte : primary key : clés spécial unique
-- check : forcer
-- not null : non vide
CREATE TABLE film2(
    code int primary key,
    titre varchar(50) not null,
    annee_sortie int,
    description text,
    note int check (note between 0 and 10),
    genre varchar(12)
);

-- en cas d'erreurs
-- ajouter un autre column
ALTER TABLE film2 ADD COLUMN origine varchar(50);

-- changer le cologne
ALTER TABLE film2 alter column origine TYPE ...;

-- supprimer le cologne
ALTER TABLE film2 drop column ...;

-- semaine2 : ajouter une contrainte
ALTER TABLE film2 add constraint ...;

-- insert

--select
-- trier le tableau
select * from film order by note desc; -- tous les champs
select titre, note from film order by note desc; -- le champs titre et le note seulement

-- pour les apostrophe, il faut les doubler :
-- exemple: 'Jean d''Arc';

-- %sensimble à la casse
-- ilike : insensimble à la casse
select * from film where titre like 'Con%'; -- commence par con,
select * from film where titre like '%y'; -- se termine par y
select * from film where titre like '%conjuring%'; -- contient conjuring

--listes des films de genre "horreur" ayant une note >= 8
select * from film where genre = 'horreur' and note >= 8
select * from film where genre = 'horreur' and note like '8' and note like '9' and note like '10';
select * from film where titre like 'Le%'
select * from film where note >= 8 order by note asc;
select * from film where année_de_sortie like '%2020%'; -- année_de_sortie
select * from film where année_de_sortie between '%2003%' and '%2010%';

select titre, note from film order by note desc limit 3; -- limiter à 3 films

-- mock : façon de faire insert automatique
-- auto increment : incrementation automatique