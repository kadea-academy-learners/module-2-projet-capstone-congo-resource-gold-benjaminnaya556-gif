**1/

SELECT s.nom,COUNT(id_engin) AS nombre_d_engins
FROM engins e 
INNER JOIN sites s
ON e.id_site =s.id_site 
GROUP BY nom

**2/

SELECT date_prod,tonnage_brut FROM production p
WHERE p.tonnage_brut =0;

**3/

SELECT e.id_engin  ,s.nom AS nom_site FROM engins e 
INNER JOIN sites s 	ON e.id_site = s.id_site;

**4/

SELECT province ,type_minerai ,SUM(tonnage_brut) AS production_totale FROM production p
INNER JOIN sites s ON p.id_site =s.id_site 
GROUP BY province ,p.type_minerai ;

**5/

SELECT SUM(tonnage_brut*teneur)AS total_metal_pur
FROM production p 

***6/

SELECT s.nom,SUM(tonnage_vendu*prix_unitaire_usd) AS chiffre_d_affaires_total_site
FROM exportations e INNER JOIN sites s ON e.id_site =s.id_site 
GROUP BY s.nom 
ORDER BY chiffre_d_affaires_total_site DESC;

***7/

SELECT s.nom AS nom_du_site,AVG(teneur)AS teneur_moyenne
FROM production p
INNER JOIN sites s ON p.id_site =s.id_site 
GROUP BY s.nom HAVING AVG(p.teneur )<2.5
ORDER BY teneur_moyenne ASC ;