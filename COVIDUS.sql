CREATE TABLE COVID_19_in_US(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    state_name TEXT,
    region_name TEXT,
    number_of_cases TEXT);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Alabama","Southeast",6);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Alaska","West",1);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Arizona","Southwest",12);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Arkansas","Southeast",12);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("California","West",300);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Colorado","West",101);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("California","West",224);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Conneticut","Northeast",12);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Delaware","Northeast",4);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Florida","Southeast",115);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Georgia","Southeast",66);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Hawaii","West",2);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Idaho","West",2);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Illinois","Midwest",64);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Indiana","Midwest",15);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("California","West",224);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Iowa","Midwest",18);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Kansas","Midwest",8);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Kentucky","Southeast",18);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Louissiana","Southeast",77);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Maine","Northeast",3);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Maryland","Northeast",26);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Massachusetts","Northeast",138);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Mitchigan","Midwest",33);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Minnesota","Midwest",21);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Missisippi","Southeast",6);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Missouri","Southeast",5);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Massachusetts","Northeast",138);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Montana","West",6);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Nebraska","Midwest",31);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("North Dakota","Midwest",1);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("New York","Northeast",420);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("New Hamshire","Northeast",7);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("New Jersey","Northeast",7);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Ohio","Midwest",26);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Oklahoma","Southwest",4);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Oregon","West",35);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Pennsylvania","Northeast",47);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Rhode Island","Northeast",20);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("MSouth Carolina","Southeast",19);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("South Dakota","Midwest",9);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Tennessee","Southeast",32);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Texas","Southwest",62);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Utah","West",9);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Vermont","Northeast",41);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Virgina","Southeast",41);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Washington","West",568);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("West Virginia","Southeast",0);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Wisconsin","Midwest",27);
INSERT INTO COVID_19_in_US(state_name,region_name,number_of_cases) VALUES ("Wyoming","West",2);
SELECT region_name, SUM(number_of_cases) AS total_cases FROM COVID_19_in_US  GROUP BY region_name ORDER BY SUM(number_of_cases) ;
SELECT AVG(number_of_cases) AS average_number_of_cases FROM COVID_19_in_US;
SELECT region_name, AVG(number_of_cases) AS average_number_of_cases FROM COVID_19_in_US GROUP BY region_name ORDER BY AVG(number_of_cases);
SELECT region_name, CASE
WHEN AVG(number_of_cases)>61.3 THEN "Above Average"
WHEN AVG(number_of_cases)=61.3 THEN "At Average"
WHEN AVG(number_of_cases)<61.3 THEN "Below average"
END "cases_region"
FROM COVID_19_in_US
GROUP BY region_name
ORDER BY cases_region;
