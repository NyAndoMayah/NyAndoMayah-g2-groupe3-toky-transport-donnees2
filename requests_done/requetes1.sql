
-- Cherchez les clients qui ont reservé pour fianarantsoa (OU UNE VILLE x EN FAIT)
SELECT nom,prenom,contact,ville.nom_ville FROM client
INNER JOIN ville
ON client.id_client = ville.id_ville
WHERE nom_ville like '%Fianarantsoa%';

-- Rechercher quels véhicules ont été conduit par tel ou tel chauffeur
SELECT id_vehicule,matricule,chauffeur.nom,chauffeur.prenom,chauffeur.contact,chauffeur.email FROM vehicule
INNER JOIN chauffeur
ON vehicule.id_vehicule = chauffeur.id_chauffeur;

-- les depenses de chaque voiture
SELECT id_vehicule,matricule,depense.essence,depense.maintenance FROM vehicule
INNER JOIN depense
ON vehicule.id_vehicule = depense.id_depense;

-- afficher tous les matricule des voitures qui vont à une certaine ville. (notion de voyage inclus ?)
SELECT id_vehicule,matricule,ville.nom_ville FROM vehicule 
INNER JOIN ville 
ON vehicule.id_vehicule = ville.id_ville;


-- les reservations des clients
SELECT nom,prenom,contact,reserver.date_reservation,reserver.montant_paye,reserver.place FROM client
INNER JOIN reserver
ON client.id_client = reserver.id_client;

-- liste des choix d'offre des clients
SELECT nom,prenom,offre.label FROM client INNER JOIN offre
ON client.id_client = offre.id_offre;

-- Le nombre de mineur qui participe a un voyage
SELECT COUNT (id_client) FROM client WHERE cin like '%null%';

