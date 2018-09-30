-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-02-01 18:40:37.623

-- foreign keys
ALTER TABLE rejs
    DROP CONSTRAINT Rejs_czarter;

ALTER TABLE rejs
    DROP CONSTRAINT Rejs_port;

ALTER TABLE rezerwacja
    DROP CONSTRAINT Rezerwacja_jacht;

ALTER TABLE rezerwacja
    DROP CONSTRAINT Rezerwacja_sternik;

ALTER TABLE czarter
    DROP CONSTRAINT czarter_Pracownik;

ALTER TABLE czarter
    DROP CONSTRAINT czarter_Rezerwacja;

ALTER TABLE jacht
    DROP CONSTRAINT jacht_patent;

ALTER TABLE sternik
    DROP CONSTRAINT sternik_patenty;

-- tables
DROP TABLE czarter;

DROP TABLE jacht;

DROP TABLE patent;

DROP TABLE port;

DROP TABLE pracownik;

DROP TABLE rejs;

DROP TABLE rezerwacja;

DROP TABLE sternik;

-- End of file.

