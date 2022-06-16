-- in : soit horreur, soit comedie / iray ihany defa mety 
select * from film where genre in ('horreur','comedie');

--- not in : pas in / tsy iray amn'izy roa
 select * from film where not ('horreur', 'comedie');

-- count : count(email) => count les email
 select count(email) from students;

 -- conter tous les sex group by : groupé par sex
 select sexe, count(*) from students group by sexe;