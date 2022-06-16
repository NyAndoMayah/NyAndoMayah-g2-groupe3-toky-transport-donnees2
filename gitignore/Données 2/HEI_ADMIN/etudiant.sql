Create database HEI_ADMIN;

create table student (
    reference int primary key,
    noms char (50) not null,
    prenoms char (50) not null,
    genre char (50) not null,
    date_d_entree date not null,
    statut_actuel char (50),
    date_de_naissance date
);

INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202101','ANDRIAMAMONJY','Fetra Tanjona','Homme','2021-11-01','actif','2001-04-14');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202102','FANOMEZANTSOA','Ezra','Femme','2021-11-01','actif','2002-08-22');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202103','HERIFENO','Fahasoavana','Homme','2021-11-01','actif','1999-01-05');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202104','MIALISON TSIHOARANA','Tiantsoa Georgio','Homme','2022-01-06','actif','2003-06-17');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202105','RANDRIAMAHEFA','Aina Tiantso','Homme','2021-11-01','decroché','2000-11-28');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202106','RAHARIMALALA','Onitina','Femme','20222-01-06','actif','2003-07-11');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202107','ANDRIAMAMONJY','Fetra Tanjona','Homme','2021-11-01','actif','2001-04-14');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202108','TAHIANASOA','Rinand','Homme','2021-11-01','decroché','1998-05-07');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202109','RAMAMONJISOA','Gaetan Mahefa','Homme','2021-11-01','decroché','2000-12-03');
INSERT INTO student(reference,noms,prenoms,genre,date_d_entree,statut_actuel,date_de_naissance) VALUES('202110','RAKOTOARISOA','Finoana Fanantenana','Femme','2021-11-01','decroché','2003-02-25');


--La reference, noms, prenoms de tous les etudiants triés par reference (numéro STD)
select reference,noms,prenoms from student order by reference asc;

-- Les noms contiennent 'RA'
select * from student where noms like '%RA%';
select * from student where noms ilike '%RA%';
select * from student where lower(noms) like '%ra%'; -- lower(à transformer en miniscule)

-- les students Homme majeurs
select * from student where genre = 'Homme' and date_de_naissance <= '2004-05-01';
select age(current_date, date_de_naissance), noms from student; -- afficher tous le age complet
select noms, prenoms from student where date_part('year',current_date) - date_part('year',date_de_naissance) >= 18;
select * from student where date_part('year', age(date_de_naissance)) >= 18 AND genre = 'Homme';

-- les students qui sont entrées chez HEI en novembre et qui en décroché
select * from student where date_d_entree = '2021-11-01' and statut_actuel = 'decroché';
select * from student where date_part('month', date_d_entree) = 11 and statut_actuel = 'decroché';

-- now(); -- l'heure et la date actuelle
-- current_date: date actuelle
-- select age(param1,param2); retourner l'age de date en param1 - param2
-- select age(date); par defaut, le param1 est date actuelle

-- date_part('year/month/day', date) : return year/month/day in the date  
--select count(email) from student : compter les mail
-- select count(distinct sexe) as gender from students : nombre de sexe different

-- Jmerise : application merise