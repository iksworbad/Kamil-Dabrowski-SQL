-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-02-01 18:40:37.623

-- tables
-- Table: czarter
CREATE TABLE czarter (
    id_rezerwacji integer  NOT NULL,
    kaucja integer  NOT NULL,
    zniszeczenia_kwota integer  NOT NULL,
    id_pracownika integer  NOT NULL,
    CONSTRAINT czarter_pk PRIMARY KEY (id_rezerwacji)
) ;

-- Table: jacht
CREATE TABLE jacht (
    id_jachtu integer  NOT NULL,
    rejestracja varchar2(10)  NULL,
    rok_produkcji date  NOT NULL,
    model varchar2(10)  NOT NULL,
    dlugosc integer  NOT NULL,
    nazwa varchar2(20)  NULL,
    powierzchnia_zagli integer  NOT NULL,
    liczba_kabin integer  NOT NULL,
    liczba_max_zalogi integer  NOT NULL,
    liczba_komf_zalogi integer  NOT NULL,
    moc_silinika integer  NOT NULL,
    ubezpieczenie varchar2(10)  NOT NULL,
    id_uprawnienia integer  NOT NULL,
    CONSTRAINT id_jachtu PRIMARY KEY (id_jachtu)
) ;

-- Table: patent
CREATE TABLE patent (
    id_uprawnienia integer  NOT NULL,
    uprawnienia varchar2(10)  NOT NULL,
    CONSTRAINT patent_pk PRIMARY KEY (id_uprawnienia)
) ;

-- Table: port
CREATE TABLE port (
    id_port integer  NOT NULL,
    nazwa_portu varchar2(12)  NOT NULL,
    miejscowosc varchar2(12)  NOT NULL,
    CONSTRAINT port_pk PRIMARY KEY (id_port)
) ;

-- Table: pracownik
CREATE TABLE pracownik (
    id_pracownika integer  NOT NULL,
    imie varchar2(20)  NOT NULL,
    nazwisko varchar2(20)  NOT NULL,
    CONSTRAINT pracownik_pk PRIMARY KEY (id_pracownika)
) ;

-- Table: rejs
CREATE TABLE rejs (
    id_port integer  NOT NULL,
    data_nocowania date  NOT NULL,
    id_rezerwacji integer  NOT NULL,
    CONSTRAINT rejs_pk PRIMARY KEY (id_port,data_nocowania,id_rezerwacji)
) ;

-- Table: rezerwacja
CREATE TABLE rezerwacja (
    id_rezerwacji integer  NOT NULL,
    dataod date  NOT NULL,
    datado date  NOT NULL,
    nr_klienta integer  NOT NULL,
    id_jachtu integer  NOT NULL,
    CONSTRAINT rezerwacja_pk PRIMARY KEY (id_rezerwacji)
) ;

-- Table: sternik
CREATE TABLE sternik (
    nr_klienta integer  NOT NULL,
    nr_patentu varchar2(12)  NOT NULL,
    nr_telefonu varchar2(11)  NOT NULL,
    dowod_tozsamosci varchar2(11)  NOT NULL,
    id_uprawnienia integer  NOT NULL,
    CONSTRAINT sternik_pk PRIMARY KEY (nr_klienta)
) ;

-- foreign keys
-- Reference: Rejs_czarter (table: rejs)
ALTER TABLE rejs ADD CONSTRAINT Rejs_czarter
    FOREIGN KEY (id_rezerwacji)
    REFERENCES czarter (id_rezerwacji);

-- Reference: Rejs_port (table: rejs)
ALTER TABLE rejs ADD CONSTRAINT Rejs_port
    FOREIGN KEY (id_port)
    REFERENCES port (id_port);

-- Reference: Rezerwacja_jacht (table: rezerwacja)
ALTER TABLE rezerwacja ADD CONSTRAINT Rezerwacja_jacht
    FOREIGN KEY (id_jachtu)
    REFERENCES jacht (id_jachtu);

-- Reference: Rezerwacja_sternik (table: rezerwacja)
ALTER TABLE rezerwacja ADD CONSTRAINT Rezerwacja_sternik
    FOREIGN KEY (nr_klienta)
    REFERENCES sternik (nr_klienta);

-- Reference: czarter_Pracownik (table: czarter)
ALTER TABLE czarter ADD CONSTRAINT czarter_Pracownik
    FOREIGN KEY (id_pracownika)
    REFERENCES pracownik (id_pracownika);

-- Reference: czarter_Rezerwacja (table: czarter)
ALTER TABLE czarter ADD CONSTRAINT czarter_Rezerwacja
    FOREIGN KEY (id_rezerwacji)
    REFERENCES rezerwacja (id_rezerwacji);

-- Reference: jacht_patent (table: jacht)
ALTER TABLE jacht ADD CONSTRAINT jacht_patent
    FOREIGN KEY (id_uprawnienia)
    REFERENCES patent (id_uprawnienia);

-- Reference: sternik_patenty (table: sternik)
ALTER TABLE sternik ADD CONSTRAINT sternik_patenty
    FOREIGN KEY (id_uprawnienia)
    REFERENCES patent (id_uprawnienia);

-- End of file.

