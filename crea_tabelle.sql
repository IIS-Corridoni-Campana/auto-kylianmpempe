



CREATE TABLE COSTRUTTORE (
    id_costruttore INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nazione VARCHAR(50) NOT NULL,
    citta_sede VARCHAR(50) NOT NULL
);



CREATE TABLE AUTO (
    targa VARCHAR(10) PRIMARY KEY,
    modello VARCHAR(50) NOT NULL,
    cilindrata INT NOT NULL,
    alimentazione VARCHAR(20) NOT NULL,
    tipo_auto VARCHAR(30) NOT NULL,
    anno_produzione YEAR NOT NULL,
    disponibile BOOLEAN NOT NULL DEFAULT TRUE,
    id_costruttore INT NOT NULL,

    FOREIGN KEY (id_costruttore)
        REFERENCES COSTRUTTORE(id_costruttore)
);



CREATE TABLE CLIENTE (
    codice_fiscale CHAR(16) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    data_nascita DATE NOT NULL
);



CREATE TABLE PATENTE (
    numero_patente VARCHAR(20) PRIMARY KEY,
    tipo_patente VARCHAR(5) NOT NULL,
    data_rilascio DATE NOT NULL,
    data_scadenza DATE NOT NULL,
    codice_fiscale CHAR(16) UNIQUE NOT NULL,

    FOREIGN KEY (codice_fiscale)
        REFERENCES CLIENTE(codice_fiscale)
);



CREATE TABLE NOLEGGIO (
    id_noleggio INT PRIMARY KEY AUTO_INCREMENT,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    costo_totale DECIMAL(8,2) NOT NULL,
    targa VARCHAR(10) NOT NULL,
    codice_fiscale CHAR(16) NOT NULL,

    FOREIGN KEY (targa)
        REFERENCES AUTO(targa),

    FOREIGN KEY (codice_fiscale)
        REFERENCES CLIENTE(codice_fiscale)
);