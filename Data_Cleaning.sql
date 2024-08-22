CREATE DATABASE  da1;
CREATE TABLE details(Fullname CHAR(20),Age INT(2),Job CHAR(10));
INSERT INTO details VALUES('Pranav Hegde',21,'Student');
SELECT *
FROM details;
CREATE TABLE mytable1(
   company               VARCHAR(29) 
  ,location              VARCHAR(16) 
  ,industry              VARCHAR(15)
  ,total_laid_off        INTEGER 
  ,percentage_laid_off   NUMERIC(6,4)
  ,DATE                  DATE 
  ,stage                 VARCHAR(14)
  ,country               VARCHAR(20) 
  ,funds_raised_millions NUMERIC(10,4)
);
INSERT INTO mytable1 VALUES ('SiriusXM','New York City','Media',475,0.08,'3/6/2023','Post-IPO','United States',525);
INSERT INTO mytable1 VALUES ('Alerzo','Ibadan','Retail',400,NULL,'3/6/2023','Series B','Nigeria',16);
INSERT INTO mytable1 VALUES ('UpGrad','Mumbai','Education',120,NULL,'3/6/2023','Unknown','India',631);
INSERT INTO mytable1 VALUES ('Loft','Sao Paulo','Real Estate',340,0.15,'3/3/2023','Unknown','Brazil',788);
INSERT INTO mytable1 VALUES ('Embark Trucks','SF Bay Area','Transportation',230,0.7,'3/3/2023','Post-IPO','United States',317);
INSERT INTO mytable1 VALUES ('Lendi','Sydney','Real Estate',100,NULL,'3/3/2023','Unknown','Australia',59);
INSERT INTO mytable1 VALUES ('UserTesting','SF Bay Area','Marketing',63,NULL,'3/3/2023','Acquired','United States',152);
INSERT INTO mytable1 VALUES ('Airbnb','SF Bay Area',NULL,30,NULL,'3/3/2023','Post-IPO','United States',6400);
INSERT INTO mytable1 VALUES ('Accolade','Seattle','Healthcare',NULL,NULL,'3/3/2023','Post-IPO','United States',458);
INSERT INTO mytable1 VALUES ('Indigo','Boston','Other',NULL,NULL,'3/3/2023','Series F','United States.',1200);
INSERT INTO mytable1 VALUES ('Zscaler','SF Bay Area','Security',177,0.03,'3/2/2023','Post-IPO','United States',148);
INSERT INTO mytable1 VALUES ('MasterClass','SF Bay Area','Education',79,NULL,'3/2/2023','Series E','United States',461);
INSERT INTO mytable1 VALUES ('Ambev Tech','Blumenau','Food',50,NULL,'3/2/2023','Acquired','Brazil',NULL);
INSERT INTO mytable1 VALUES ('Fittr','Pune','Fitness',30,0.11,'3/2/2023','Series A','India',13);
INSERT INTO mytable1 VALUES ('CNET','SF Bay Area','Media',12,0.1,'3/2/2023','Acquired','United States',20);
INSERT INTO mytable1 VALUES ('Flipkart','Bengaluru','Retail',NULL,NULL,'3/2/2023','Acquired','India',12900);
INSERT INTO mytable1 VALUES ('Kandela','Los Angeles','Consumer',NULL,1,'3/2/2023','Acquired','United States',NULL);
INSERT INTO mytable1 VALUES ('Truckstop.com','Boise','Logistics',NULL,NULL,'3/2/2023','Acquired','United States',NULL);
SELECT *
FROM mytable1;
SELECT DISTINCT 
location 
FROM mytable1
ORDER BY 1;
UPDATE mytable1
SET DATE = STR_TO_DATE(DATE, '%m/%d/%y');
SELECT *
FROM mytable1
WHERE total_laid_off  IS NULL;
SELECT DISTINCT
industry FROM
mytable1
WHERE industry='';

SELECT *
FROM mytable1 AS t1
JOIN mytable1 AS t2
ON t1.company=t2.company
AND t1.country=t2.country
WHERE t1.country='United States'; 

SELECT *
FROM mytable1 AS t1
JOIN mytable1 AS t2
ON t1.company=t2.company
AND t1.country=t2.country
WHERE(t1.industry IS NULL)
AND t2.industry IS NOT NULL;