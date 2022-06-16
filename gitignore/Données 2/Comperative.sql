-- ---raccourci foreign key
-- id_producteur int references producteur(id_producteur)
create database Toky transport;

create table chauffeur(
    id_chauffeur serial primary key,
    prenom varchar(150),
    cin varchar (12),
    contact varchar (15),
    email varchar (150),
    nb_voyage int,
    matricule int references vehicule(matricule)
)

create table conduire(
    id_chauffeur int references chauffeur(id_chauffeur),
    matricule int re
)

create table vehicule(
    matricule varchar (50),
    nb_place int,
    statut boolean
)
create table offre(
    id_offre int,
    tariif int,
    label varchar(100)
)
create table Client(
    id_client int primary key,
    nom varchar(150),
    premon varchar(150),
    cin varchar(150),
    contact varchar(15)
)

create table depense(
    id_dep int,
    essence float,
    maintenance int,
    matricule int references vehicule(matricule)
)

create table ville(
    id_ville int,
    nom_ville varchar (100)
)

create table reserver(
    date_reservation date,
    place int,
    montant_paye int,
    id_client int references client(id_client),
    id_voyage int references voyage(id_voyage)
)

create table voyage(
    id_dest int,
    nom_dest varchar (150),
    date_voyage date,
    heure_dep time,
    nb_place int,
    id_offre int references offre(id_offre),
    id_ville int references ville(id_ville),
    matricule int references vehicule(matricule),
)