SELECT * FROM AUTO;
SELECT * FROM CLIENTE;
SELECT A.modello, C.nome AS costruttore
FROM AUTO A
JOIN COSTRUTTORE C
ON A.id_costruttore = C.id_costruttore;
SELECT *
FROM AUTO
WHERE disponibile = TRUE;
SELECT
    N.id_noleggio,
    CL.nome,
    CL.cognome,
    A.modello,
    N.data_inizio,
    N.data_fine,
    N.costo_totale
FROM NOLEGGIO N
JOIN CLIENTE CL
ON N.codice_fiscale = CL.codice_fiscale
JOIN AUTO A
ON N.targa = A.targa;
SELECT *
FROM CLIENTE
WHERE data_nascita > '1990-01-01';
SELECT *
FROM AUTO
WHERE alimentazione = 'Diesel';
SELECT SUM(costo_totale) AS totale_incassi
FROM NOLEGGIO;
SELECT
    C.nome,
    COUNT(A.targa) AS numero_auto
FROM COSTRUTTORE C
LEFT JOIN AUTO A
ON C.id_costruttore = A.id_costruttore
GROUP BY C.nome;
SELECT
    CL.nome,
    CL.cognome,
    P.tipo_patente
FROM CLIENTE CL
JOIN PATENTE P
ON CL.codice_fiscale = P.codice_fiscale
WHERE P.tipo_patente = 'B';
UPDATE AUTO
SET disponibile = FALSE
WHERE targa = 'AB123CD';
DELETE FROM NOLEGGIO
WHERE id_noleggio = 1;
ALTER TABLE CLIENTE
ADD email VARCHAR(100);
DROP TABLE PATENTE;