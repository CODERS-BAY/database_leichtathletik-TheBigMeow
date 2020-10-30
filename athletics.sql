
CREATE DATABASE athletics;

USE athletics;

CREATE TABLE austragungsort(
    austragungsort_id int(6) NOT NULL AUTO_INCREMENT,
    adresse varchar(50) NOT NULL,
    stadt varchar(20) NOT NULL,
    primary key(austragungsort_id)
);

CREATE TABLE veranstaltung(
    veranstaltung_id int(6) NOT NULL AUTO_INCREMENT,
    zeitpunkt datetime NOT NULL,
    disziplin varchar(20) NOT NULL,
    austragungsort_id int(6) NOT NULL,
    primary key(veranstaltung_id),
    foreign key (austragungsort_id) REFERENCES austragungsort(austragungsort_id)
);

CREATE TABLE helfer(
    helfer_id int(6) NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    funktion varchar(20) NOT NULL,
    primary key(helfer_id)
);

CREATE TABLE helfer_veranstaltung(
    helfer_id int(6) NOT NULL,
    veranstaltung_id int(6) NOT NULL,
    primary key(helfer_id, veranstaltung_id),
    foreign key (helfer_id) REFERENCES helfer(helfer_id),
    foreign key (veranstaltung_id)REFERENCES veranstaltung(veranstaltung_id)
);

CREATE TABLE athlet(
    athlet_id int(6) NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    nation varchar(15) NOT NULL,
    primary key(athlet_id)
);

CREATE TABLE ergebnis(
    ergebnis_id int(6)NOT NULL AUTO_INCREMENT,
    rang int NOT NULL,
    wert int NOT NULL,
    primary key(ergebnis_id),
    veranstaltung_id int(6) NOT NULL,
    foreign key (veranstaltung_id)REFERENCES veranstaltung(veranstaltung_id),
    athlet_id int(6) NOT NULL,
    foreign key (athlet_id) REFERENCES athlet(athlet_id)
);








