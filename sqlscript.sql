REM   Script: Session 03
REM   das

CREATE TABLE person  
	( CNP VARCHAR (25)  
	CONSTRAINT CNP NOT NULL  
	, person_name VARCHAR(25)  
	  
	);

ALTER TABLE person 
    ADD (CONSTRAINT cnp_PK 
    PRIMARY KEY (CNP) 
    );

CREATE TABLE magazin 
	(magazin_id VARCHAR(25) 
	CONSTRAINT magazin_id NOT NULL 
	, magazin_name VARCHAR(25) 
	, magazin_address VARCHAR(25) 
	);

ALTER TABLE magazin  
	ADD ( CONSTRAINT magazin_id_pk 
	PRIMARY KEY (magazin_id) 
	);

CREATE TABLE persoanacontact  
	( CNP VARCHAR(25) 
        ,persoanacontact_id VARCHAR(40)  
	CONSTRAINT persoanacontact_id NOT NULL  
	, persoanacontactnume VARCHAR(40)  
	, statut VARCHAR(25)  
	);

ALTER TABLE persoanacontact 
	ADD ( CONSTRAINT persoanacontact_id_pk 
	PRIMARY KEY (persoanacontact_id) 
	);

CREATE TABLE departament 
	(departament_id VARCHAR(25) 
	CONSTRAINT departament_id NOT NULL 
	, departament_name VARCHAR(25) 
	);

ALTER TABLE departament 
	ADD ( CONSTRAINT departament_id_pk 
	PRIMARY KEY (departament_id) 
	);

CREATE TABLE clientqw 
	( CNP VARCHAR (25) 
	, client_id VARCHAR(25) 
	CONSTRAINT client_id NOT NULL 
	, client_name VARCHAR(25) 
	 
	);

ALTER TABLE clientqw 
	ADD ( CONSTRAINT client_id_pk 
	PRIMARY KEY (client_id) 
	);

CREATE TABLE adresa 
	( adresa_id VARCHAR (25) 
	, oras VARCHAR (25) 
	, strada VARCHAR(25) 
	, judet VARCHAR(25) 
	CONSTRAINT adresa_id NOT NULL 
	);

ALTER TABLE adresa 
	ADD ( CONSTRAINT adresa_id_pk 
	PRIMARY KEY (adresa_id) 
	);

CREATE TABLE comanda 
	( comanda_id VARCHAR (25) 
	, comanda_date DATE 
	, comanda_cost NUMBER 
	CONSTRAINT comanda_id NOT NULL 
	);

ALTER TABLE comanda 
	ADD ( CONSTRAINT comanda_id_pk 
	PRIMARY KEY (comanda_id) 
	);

CREATE TABLE contactclient 
	( client_id VARCHAR (25) 
	, persoanacontact_id VARCHAR (25) 
	, contactclient_id VARCHAR(25) 
	);

ALTER TABLE contactclient 
	ADD ( CONSTRAINT contactclient_id_pk 
	PRIMARY KEY (contactclient_id) 
	);

CREATE TABLE persdepartament 
	( persoanacontact_id VARCHAR (25) 
	, departament_id VARCHAR(25) 
	, persdepartament_id VARCHAR(25) 
	);

ALTER TABLE persdepartament 
	ADD ( CONSTRAINT persdepartament_id_pk 
	PRIMARY KEY (persdepartament_id) 
	);

CREATE TABLE adresaclient 
	( client_id VARCHAR (25) 
	, adresa_id VARCHAR (25) 
	, adresaclient_id VARCHAR(25) 
	);

ALTER TABLE adresaclient 
	ADD ( CONSTRAINT adresaclient_id_pk 
	PRIMARY KEY (adresaclient_id) 
	);

CREATE TABLE clientcomanda 
	( client_id VARCHAR(25) 
	, comanda_id VARCHAR (25) 
	, clientcomanda_id VARCHAR (25) 
	);

ALTER TABLE clientcomanda 
	ADD ( CONSTRAINT clientcomanda_id_pk 
	PRIMARY KEY (clientcomanda_id) 
	);

ALTER TABLE contactclient 
	ADD ( CONSTRAINT client_id_contactclient_fk 
	FOREIGN KEY (client_id) 
	REFERENCES clientqw (client_id) 
	);

ALTER TABLE contactclient 
	ADD ( CONSTRAINT persoanacontact_id_contactclient_fk 
	FOREIGN KEY (persoanacontact_id) 
	REFERENCES persoanacontact (persoanacontact_id) 
	);

ALTER TABLE persdepartament 
	ADD ( CONSTRAINT persoanacontact_id_persdepartment_fk 
	FOREIGN KEY (persoanacontact_id) 
	REFERENCES persoanacontact (persoanacontact_id) 
	);

ALTER TABLE persdepartament 
	ADD ( CONSTRAINT departament_id_persdepartament_fk 
	FOREIGN KEY (departament_id) 
	REFERENCES departament(departament_id) 
	);

ALTER TABLE adresaclient 
	ADD(CONSTRAINT adresa_id_adresaclient_fk 
	FOREIGN KEY (adresa_id) 
	REFERENCES adresa(adresa_id) 
	);

ALTER TABLE adresaclient 
	ADD ( CONSTRAINT client_id_adresaclient_fk 
	FOREIGN KEY (client_id) 
	REFERENCES clientqw (client_id) 
	);

ALTER TABLE clientcomanda 
	ADD ( CONSTRAINT client_id_clientcomanda_fk 
	FOREIGN KEY (client_id) 
	REFERENCES clientqw (client_id) 
	);

ALTER TABLE clientcomanda 
	ADD(CONSTRAINT comanda_id_clientcomanda_fk 
	FOREIGN KEY (comanda_id) 
	REFERENCES comanda(comanda_id) 
	);

ALTER TABLE clientqw	 
	ADD ( CONSTRAINT CNP_client_fk 
	FOREIGN KEY (CNP) 
	REFERENCES person(CNP) 
	);

INSERT INTO magazin VALUES 
	('1' 
	, 'MAG1' 
	, 'CRAIOVA' 
	);

INSERT INTO magazin VALUES 
	('2' 
	, 'MAG2' 
	, 'TIMISOARA' 
	);

INSERT INTO magazin VALUES 
	('3' 
	, 'MAG3' 
	, 'CLUJ' 
	);

INSERT INTO magazin VALUES 
	('4' 
	, 'MAG4' 
	, 'BUCURESTI' 
	);

INSERT INTO magazin VALUES 
	('5' 
	, 'MAG5' 
	, 'IASI' 
	);

INSERT INTO person VALUES 
	('1234567891234' 
	, 'Ana' 
	 
	);

INSERT INTO person VALUES 
	('1245535321563' 
	, 'Anca' 
	 
	);

INSERT INTO person VALUES 
	('2425657432245' 
	, 'Anuta' 
	 
	);

INSERT INTO person VALUES 
	('1231123324554' 
	, 'Maria' 
	 
	);

INSERT INTO person VALUES 
	('2948573594738' 
	, 'Ioana' 
	 
	);

INSERT INTO person VALUES 
	('1383753937583' 
	, 'Mara' 
	 
	);

INSERT INTO person VALUES 
	('27648574893857' 
	, 'Sonia' 
	 
	);

INSERT INTO person VALUES 
	('28457564385658' 
	, 'Alina' 
	 
	);

INSERT INTO person VALUES 
	('18273465746475' 
	, 'Andreea' 
	 
	);

INSERT INTO person VALUES 
	('1384757387583' 
	, 'Felicia' 
	 
	);

INSERT INTO person VALUES 
	('112434535677' 
	, 'Elena' 
	 
	);

INSERT INTO person VALUES 
	('245496868594' 
	, 'Daria' 
	 
	);

INSERT INTO person VALUES 
	('2557891876881' 
	, 'Cristina' 
	 
	);

INSERT INTO person VALUES 
	('1456778854778' 
	, 'Viorica' 
	 
	);

INSERT INTO person VALUES 
	('176898766621' 
	, 'Bianca' 
	 
	);

INSERT INTO person VALUES 
	('2546576868765' 
	, 'Nicoleta' 
	 
	);

INSERT INTO person VALUES 
	('1235354667743' 
	, 'Maria' 
	 
	);

INSERT INTO person VALUES 
	('1345897275611' 
	, 'Lucia' 
	 
	);

INSERT INTO person VALUES 
	('2385345673321' 
	, 'Anca' 
	 
	);

INSERT INTO person VALUES 
	('123456734452' 
	, 'Ana' 
	 
	);

INSERT INTO person VALUES 
	('123456734453' 
	, 'Harper' 
	 
	);

INSERT INTO person VALUES 
	('123456734454' 
	, 'Charles' 
	 
	);

INSERT INTO person VALUES 
	('123456734455' 
	, 'Ken' 
	 
	);

INSERT INTO person VALUES 
	('123456734456' 
	, 'John' 
	 
	);

INSERT INTO person VALUES 
	('123456734457' 
	, 'William' 
	 
	);

INSERT INTO person VALUES 
	('123456734458' 
	, 'Caroline' 
	 
	);

INSERT INTO person VALUES 
	('123456734459' 
	, 'Lucy' 
	 
	);

INSERT INTO person VALUES 
	('123456734460' 
	, 'J.M' 
	 
	);

INSERT INTO person VALUES 
	('123456734461' 
	, 'Vladimir' 
	 
	);

INSERT INTO departament VALUES 
	('1' 
	, 'Mobila' 
	 
	);

INSERT INTO departament VALUES 
	('2' 
	, 'Papetarie' 
	 
	);

INSERT INTO departament VALUES 
	('3' 
	, 'Cani' 
	 
	);

INSERT INTO departament VALUES 
	('4' 
	, 'Mancare' 
	 
	);

INSERT INTO departament VALUES 
	('5' 
	, 'Prostii' 
	 
	);

INSERT INTO clientqw VALUES 
	('123456734453' 
	, '1' 
	, 'Da' 
	);

INSERT INTO clientqw VALUES 
	('123496734453' 
	, '4' 
	, 'ca' 
	);

	INSERT INTO clientqw VALUES 
	('123458734453' 
	, '3' 
	, 'na' 
	);

	INSERT INTO clientqw VALUES 
	('123453734453' 
	, '2' 
	, 'ahaa' 
	);

INSERT INTO clientqw VALUES 
	('123456734453' 
	, '1' 
	, 'da' 
	);

INSERT INTO clientqw VALUES 
	('123456734454' 
	, '2' 
	, 'sa' 
	);

INSERT INTO clientqw VALUES 
	('123456734455' 
	, '3' 
	, 'na' 
	);

INSERT INTO clientqw VALUES 
	('123456734456' 
	, '4' 
	, 'ma' 
	);

INSERT INTO clientqw VALUES 
	('123456734457' 
	, '5' 
	, 'sas' 
	);

INSERT INTO clientqw VALUES 
	('123456734458' 
	, '6' 
	, 'nas' 
	);

INSERT INTO clientqw VALUES 
	('123456734459' 
	, '7' 
	, 'bas' 
	);

INSERT INTO clientqw VALUES 
	('123456734460' 
	, '8' 
	, 'ras' 
	);

INSERT INTO clientqw VALUES 
	('123456734461' 
	, '9' 
	, 'cas' 
	);

INSERT INTO persoanacontact VALUES 
	('1234567891234' 
	, '1' 
	, 'ana' 
	, 'sef' 
	);

INSERT INTO persoanacontact VALUES 
	('1245535321563' 
	, '2' 
	, 'emilia' 
	, 'sefulet' 
	);

INSERT INTO persoanacontact VALUES 
	('2425657432245' 
	, '3' 
	, 'andreea' 
	, 'necalificat' 
	);

INSERT INTO persoanacontact VALUES 
	('1231123324554' 
	, '4' 
	, 'andreea' 
	, 'necalificat' 
	);

INSERT INTO contactclient VALUES  
	('1' 
	, '1' 
	, '1' 
	);

INSERT INTO contactclient VALUES  
	('2' 
	, '2' 
	, '2' 
	);

INSERT INTO contactclient VALUES  
	('3' 
	, '3' 
	, '3' 
	);

INSERT INTO contactclient VALUES  
	('4' 
	, '4' 
	, '4' 
	);

INSERT INTO contactclient VALUES  
	('5' 
	, '5' 
	, '5' 
	);

INSERT INTO contactclient VALUES  
	('6' 
	, '1' 
	, '6' 
	);

INSERT INTO contactclient VALUES  
	('7' 
	, '1' 
	, '7' 
	);

INSERT INTO persdepartament VALUES  
	('1' 
	, '1' 
	, '1' 
	);

INSERT INTO persdepartament VALUES  
	('2' 
	, '2' 
	, '2' 
	);

INSERT INTO persdepartament VALUES  
	('3' 
	, '3' 
	, '3' 
	);

INSERT INTO persdepartament VALUES  
	('4' 
	, '4' 
	, '4' 
	);

INSERT INTO persdepartament VALUES  
	('5' 
	, '5' 
	, '5' 
	);

INSERT INTO persdepartament VALUES  
	('6' 
	, '1' 
	, '6' 
	);

INSERT INTO persdepartament VALUES  
	('7' 
	, '1' 
	, '7' 
	);

INSERT INTO adresa  VALUES  
	('1' 
	, 'Craiova' 
	, 'Dacia' 
	, 'Dolj' 
	);

INSERT INTO adresa  VALUES  
	('1' 
	, 'Craiova' 
	, 'Dacia' 
	, 'Dolj' 
	);

INSERT INTO adresa  VALUES  
	('2' 
	, 'Filiasi' 
	, 'Florilor' 
	, 'Dolj' 
	);

INSERT INTO adresa  VALUES  
	('3' 
	, 'Ionesti' 
	, 'Principala' 
	, 'Gorj' 
	);

INSERT INTO adresa  VALUES  
	('4' 
	, 'Costesti' 
	, 'Banilor' 
	, 'Valcea' 
	);

INSERT INTO adresa  VALUES  
	('5' 
	, 'Dragomiresti' 
	, 'Florilor' 
	, 'Gorj' 
	);

INSERT INTO adresa  VALUES  
	('6' 
	, 'Bumbesti' 
	, 'Amaradia' 
	, 'Gorj' 
	);

INSERT INTO adresaclient VALUES  
	('1' 
	, '1' 
	, '1' 
	);

INSERT INTO adresaclient VALUES  
	('2' 
	, '2' 
	, '2' 
	);

INSERT INTO adresaclient VALUES  
	('3' 
	, '3' 
	, '3' 
	);

INSERT INTO adresaclient VALUES  
	('4' 
	, '4' 
	, '4' 
	);

INSERT INTO adresaclient VALUES  
	('8' 
	, '5' 
	, '5' 
	);

INSERT INTO comanda VALUES  
	('1' 
	, '12.02.2019' 
	, '5' 
	);

INSERT INTO comanda VALUES  
	('1' 
	, TO_DATE('07-FEB-2019', 'dd-MON-yyyy') 
	, '5' 
	);

INSERT INTO comanda VALUES  
	('2' 
	, TO_DATE('08-FEB-2019', 'dd-MON-yyyy') 
	, '15' 
	);

INSERT INTO comanda VALUES  
	('3' 
	, TO_DATE('04-FEB-2019', 'dd-MON-yyyy') 
	, '4' 
	);

INSERT INTO comanda VALUES  
	('4' 
	, TO_DATE('09-FEB-2019', 'dd-MON-yyyy') 
	, '6' 
	);

INSERT INTO comanda VALUES  
	('5' 
	, TO_DATE('09-FEB-2019', 'dd-MON-yyyy') 
	, '6' 
	);

INSERT INTO clientcomanda VALUES  
	('1' 
	, '2' 
	, '1' 
	);

INSERT INTO clientcomanda VALUES  
	('2' 
	, '1' 
	, '2' 
	);

INSERT INTO adresaclient VALUES  
	('3' 
	, '4' 
	, '4' 
	);

INSERT INTO adresaclient VALUES  
	('4' 
	, '3' 
	, '3' 
	);

INSERT INTO adresaclient VALUES  
	('6' 
	, '5' 
	, '5' 
	);

INSERT INTO clientcomanda VALUES  
	('3' 
	, '4' 
	, '4' 
	);

INSERT INTO clientcomanda VALUES  
	('4' 
	, '3' 
	, '3' 
	);

INSERT INTO clientcomanda VALUES  
	('6' 
	, '5' 
	, '5' 
	);

CREATE INDEX person_name_i  
ON person(person_name);

SELECT * from person;

update clientqw set client_name='Doru'  where client_id_id=4;

update clientqw set client_name='Doru'  where client_id=4;

SELECT * 
FROM clientqw 
WHERE client_id_id=4;

SELECT * 
FROM clientqw 
WHERE client_id=4;

SELECT person.cnp, clientqw.client_id 
FROM person 
INNER JOIN clientqw 
ON clientqw.cnp = person.cnp 
ORDER BY client_id;

SELECT * 
FROM persdepartament 
WHERE persdepartament_id >= 2 
ORDER BY persdepartament_id ASC;

SELECT comanda_id, comanda_cost 
FROM comanda 
WHERE comanda_id < 5 
AND comanda_cost > 4 
ORDER BY comanda_id ASC, comanda_cost DESC;

SELECT * 
FROM comanda 
WHERE comanda_id > 1 
AND comanda_cost BETWEEN 2 AND 90;

delete from clientqw where client_id=4;

CREATE OR REPLACE PROCEDURE print_persoanacontact_details( 
    p_cnp VARCHAR2 
) 
IS 
  r_details persoanacontact%ROWTYPE; 
BEGIN 
  -- get details based on persoanacontact id 
  SELECT * 
  INTO r_details 
  FROM persoanacontact 
  WHERE cnp = p_cnp; 
   
   -- print out contact's information 
  dbms_output.put_line( r_details.persoanacontact_name || r_details.statut); 
  
END;
/

CREATE OR REPLACE PROCEDURE print_persoanacontact_details( 
    p_cnp VARCHAR2 
) 
IS 
  r_details persoanacontact%ROWTYPE; 
BEGIN 
  -- get details based on persoanacontact id 
  SELECT * 
  INTO r_details 
  FROM persoanacontact 
  WHERE cnp = p_cnp; 
   
   -- print out contact's information 
  dbms_output.put_line( r_details.persoanacontactnume || r_details.statut); 
  
END;
/

EXECUTE print_persoanacontact_details('1234567891234')


