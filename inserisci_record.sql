INSERT INTO COSTRUTTORE (nome, nazione, citta_sede)
VALUES
('Fiat', 'Italia', 'Torino'),
('BMW', 'Germania', 'Monaco'),
('Citroen', 'Francia', 'Parigi');

INSERT INTO AUTO
(targa, modello, cilindrata, alimentazione, tipo_auto, anno_produzione, disponibile, id_costruttore)
VALUES
('AB123CD', 'Panda', 1200, 'Benzina', 'Citycar', 2020, TRUE, 1),

('EF456GH', 'Clio', 1500, 'Diesel', 'Berlina', 2021, TRUE, 3),

('IJ789KL', 'X5', 3000, 'Diesel', 'SUV', 2022, FALSE, 2);

INSERT INTO CLIENTE
(codice_fiscale, nome, cognome, telefono, data_nascita)
VALUES
('RSSMRA90A01H501Z', 'Mario', 'Rossi', '3331234567', '1990-01-01'),

('VRDLGI85B15F205X', 'Luigi', 'Verdi', '3337654321', '1985-02-15'),

('BNCMRA95C10G273Y', 'Maria', 'Bianchi', '3339998888', '1995-03-10');

INSERT INTO PATENTE
(numero_patente, tipo_patente, data_rilascio, data_scadenza, codice_fiscale)
VALUES
('PAT12345', 'B', '2010-06-15', '2030-06-15', 'RSSMRA90A01H501Z'),

('PAT67890', 'B', '2005-09-20', '2025-09-20', 'VRDLGI85B15F205X'),

('PAT54321', 'A', '2015-03-10', '2035-03-10', 'BNCMRA95C10G273Y');

INSERT INTO NOLEGGIO
(data_inizio, data_fine, costo_totale, targa, codice_fiscale)
VALUES
('2026-05-01', '2026-05-07', 350.00, 'AB123CD', 'RSSMRA90A01H501Z'),

('2026-05-10', '2026-05-15', 500.00, 'EF456GH', 'VRDLGI85B15F205X'),

('2026-05-18', '2026-05-25', 900.00, 'IJ789KL', 'BNCMRA95C10G273Y');