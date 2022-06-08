--Nombre de client enregistré en une date 
 SELECT count(*) FROM client INNER JOIN reserver ON client.id_client = reserver.id_client
 WHERE date_reservation = '10-01-22';
