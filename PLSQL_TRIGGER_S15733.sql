-- zakaz wprwadzanai rezerwacje daty od w przeszosci 
CREATE OR REPLACE TRIGGER data_rezerwacji
BEFORE INSERT OR UPDATE OF dataod
ON rezerwacja
FOR EACH ROW
BEGIN
IF( :NEW.dataod < SYSDATE ) THEN
RAISE_APPLICATION_ERROR(-20556,'rezerwacja nie moze zaczynac sie w dniu który juz byl');
END IF;
END;


INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (1, '2015-07-07','2015-07-21', 1, 1);
                
-- jachty o dlugosci wiekszej niz 25 (7,5 metra) nie moga zostac dodane z patentem nizszym niz 1                
 create or replace TRIGGER dok
BEFORE INSERT OR UPDATE of dlugosc 
ON jacht
FOR EACH ROW
BEGIN
IF (:NEW.dlugosc > 25 and :NEW.id_uprawnienia=0) THEN
Raise_application_error(-20503, 'Na ten jach sa wymagane dokumenty minimum sternika jachtowego');
END if;
END;

INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (11,'vvv543','2012-01-01','TES',32,'KOT',48,5,12,6,20, 'ddd056',0);