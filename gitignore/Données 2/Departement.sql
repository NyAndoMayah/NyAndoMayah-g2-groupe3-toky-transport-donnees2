--------------------------------------------------------------- 1-1 et 1-n -------------------------------------------------------------------------------------
create database personnel;
\c personnel;
create table departement(
    id_departement int primary key,
    nom varchar (150)
);

create table employe(
    id_emp int primary key,
    nom varchar (150) not null,
    prenom varchar (150),
    age date not null,
    sexe varchar(1) not null,
    id_departement int,
    constraint fk_departement foreign key (id_departement) references departement(id_departement)
);




insert into departement VALUES(1,'Informatique'), (2,'Management'), (3,'Ressources Humaines');
insert into employe values(1,'Mickael','Jackson','1995-02-18','M',2), (2,'Selena','Gomez','1997-09-23','F',3), (2,'Boy','Man','1993-12-03','H',1);

---------------------------------------------------------------- 0,n et 0,n  ----------------------------------------------------------------------------------
create table projet(
    id_projet int primary key,
    nom varchar (150),
    date_debut date null,
    date_fin date
);

create table travailler(
    id_travailler int primary key,
    id_projet int not null,
    id_emp int not null,
    role varchar(50) not null,
    constraint fk_projet foreign key (id_projet) references projet(id_projet),
    constraint employe foreign key (id_emp) references employe(id_emp)
);

insert into projet values(1,'Bus scolaire','2019-12-23',current_date), (2,'SiteAdmin','2021-12-23',current_date);
insert into travailler values(1,1,2,'Chauffeur'), (2,2,3,'Dev BackEnd');

---------------------------------------------------------QCM------------------------------------------------------------------
selec