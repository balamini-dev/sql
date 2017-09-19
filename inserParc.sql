use creparc;

INSERT INTO Segment (indIP, nomSegment, etage)
 VALUES
 ('130.120.80', 'Brin RDC', NULL),
 ('130.120.81', 'Brin 1er étage', NULL),
 ('130.120.82', 'Brin 2e étage', NULL);

INSERT INTO Salle (nSalle, nomSalle, nbPoste, indIP)
 VALUES
 ('a01', 'Salle 1', '3', '130.120.80'),
 ('a02', 'Salle 2', '2', '130.120.80'),
 ('a03', 'Salle 3', '2', '130.120.80'),
 ('a11', 'Salle 11', '2', '130.120.81'),
 ('a12', 'Salle 12', '1', '130.120.81'),
 ('a21', 'Salle 21', '2', '130.120.82'),
 ('a22', 'Salle 22', '0', '130.120.83'),
 ('a23', 'Salle 23', '0', '130.120.83');

INSERT INTO Poste (nPoste, nomposte, indIP, ad, typePoste, nSalle)
 VALUES
 ('p1', 'Poste 1', '130.120.80', '01', 'TX', 'a01'),
 ('p2', 'Poste 2', '130.120.80', '02', 'UNIX', 'a01'),
 ('p3', 'Poste 3', '130.120.80', '03', 'TX', 'a01'),
 ('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 'a02'),
 ('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 'a02'),
 ('p6', 'Poste 6', '130.120.80', '06', 'UNIX', 'a03'),
 ('p7', 'Poste 7', '130.120.80', '07', 'TX', 'a03'),
 ('p8', 'Poste 8', '130.120.81', '01', 'UNIX', 'a11'),
 ('p9', 'Poste 9', '130.120.81', '02', 'TX', 'a11'),
 ('p10', 'Poste 10', '130.120.81', '03', 'UNIX', 'a12'),
 ('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 'a21'),
 ('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 'a21');

INSERT INTO Logiciel (nLog, nomLog, dateAch, version, typeLog, prix)
 VALUES
 ('log1', 'Oracle 6', '1995-05-13', '6.2', 'UNIX', '3000'),
 ('log2', 'Oracle 8', '1999-09-15', '8i', 'UNIX', '5600'),
 ('log3', 'SQL Server', '1998-04-12', '7', 'PCNT', '2700'),
 ('log4', 'Front Page', '1997-06-03', '5', 'PCWS', '500'),
 ('log5', 'WinDev', '1997-05-12', '5', 'PCWS', '750'),
 ('log6', 'SQL*Net', '2.0', '6.2', 'UNIX', '500'),
 ('log7', 'I.I.S', '2002-04-12', '2', 'PCNT', '810'),
 ('log8', 'DreamWeaver', '2003-09-21', '2.0', 'BeOS', '1400');

INSERT INTO Types (typeLp, nomType)
 VALUES
 ('TX', 'Terminal x-Windows'),
 ('UNIX', 'Système Unix'),
 ('PCNT', 'PC windows NT'),
 ('PCWS', 'PC windows'),
 ('NC', 'Network Computer');

 INSERT INTO installer (nPoste, nLog, dateIns)
 VALUES
 ('p2', 'log1', '2003-05-15'),
 ('p2', 'log2', '2003-09-17'),
 ('p4', 'log5', NULL),
 ('p6', 'log6', '2003-05-20'),
 ('p6', 'log1', '2003-05-20'),
 ('p8', 'log2', '2003-05-19'),
 ('p8', 'log6', '2003-05-20'),
 ('p11', 'log3', '2003-04-20'),
 ('p12', 'log4', '2003-04-20'),
 ('p11', 'log7', '2003-04-20'),
 ('p7', 'log7', '2002-04-01');
