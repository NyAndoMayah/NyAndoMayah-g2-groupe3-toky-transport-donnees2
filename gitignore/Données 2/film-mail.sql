---------- \i chemain absolu du fichier(excecuter le fichier sql)
------------ \x change l'affichage
    \i'c:/Users/......./le fichier';
create database FilmMerise;

\c FilmMerise

create table Producteur(
    id_producteur int primary key,
    nom_producteur varchar (150),
    prenom_producteur varchar (150)
);

create table Film(
    id_film int primary key,
    titre varchar (100),
    id_producteur int,
    constraint fk_producteur foreign key (id_producteur) references Producteur(id_producteur)
);

create table Genre(
    id_genre int primary key,
    label_genre varchar(25)
);

create table avoir(
    id_avoir int primary key,
    id_genre int not null,
    id_film int not null,
    constraint fk_genre foreign key (id_genre) references Genre(id_genre),
    constraint fk_film foreign key (id_film) references Film(id_film)
);

create table Acteur(
    id_acteur int primary key,
    nom_acteur varchar(100),
    prenom_acteur varchar (100)
);

create table jouer(
    id_joueur int primary key,
    id_film int not null,
    id_acteur int not null,
    constraint fk_film foreign key (id_film) references Film(id_film),
    constraint fk_acteur foreign key (id_acteur) references Acteur(id_acteur)
);



insert into Genre values(1,'Comedie'), (2,'Horreur'), (3,'Action');

insert into Acteur values(1,'Mr Bean','Charlot'), (2, 'The Rock', 'Ceana'), (3, 'Will Smith','Gargouille');

insert into Producteur values(1,'Docteur','Bean'), (2, 'Scoop', 'Digital'), (3,'Net','flix');

insert into  film values(1,'The best comedian',1), (2, 'The conjuring',2), (3, 'Bad Boy',3);

insert into avoir values (1,1,1), (2,2,2), (3,3,3);

insert into jouer values (1,1,1), (2,2,2), (3,3,3);

---------------------- exo -----------
select (...) from table inner join autretable on c
select id_film, titre, nom_producteur, prenom_producteur from Film inner join Producteur on Film.id_producteur = Producteur.id_producteur;

-----deux jointure------
select film.id_film, titre, label_genre from film inner join avoir on avoir.id_film = film.id_film inner join genre on avoir.id_genre = genre.id_genre;

select film.id_film, titre, nom_acteur, prenom_acteur from film inner join jouer on jouer.id_film = film.id_film inner join Acteur on jouer.id_acteur = Acteur.id_acteur where Acteur.id_acteur =1;

---raccourci foreign key
id_producteur int references producteur(id_producteur)