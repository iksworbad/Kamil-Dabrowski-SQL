INSERT INTO PATENT (ID_UPRAWNIENIA, UPRAWNIENIA)
VALUES (0, 'BRAK');

INSERT INTO PATENT (ID_UPRAWNIENIA, UPRAWNIENIA)
VALUES (1, 'JACHTOWY');

INSERT INTO PATENT (ID_UPRAWNIENIA, UPRAWNIENIA)
VALUES (2, 'MORSKI');

SELECT * FROM PATENT;

INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (1,'252525','111111111','96073111251',1);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (2,'222212','222222222','90042213232',2);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (3,'333333','333333333','80080821332',1);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (4,'444444','444444444','93010122332',2);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (5,'555555','555555555','94061222665',1);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (6,'666666','666666666','73031933448',1);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (7,'777777','777777777','94053086548',1);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (8,'888888','888888888','94053086548',2);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (9,'999999','999999999','69122129349',2);
INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (10,'101010','1010101010','7509223945',1);

INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (1,'KEJA','WEGORZEWO');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (2,'BUNKRY','MAMERKI');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (3,'SZTYNORT','SZTYNORT');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (4,'COS','GIZYCKO');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (5,'STRANDA','GIZYCKO');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (6,'WIOSKA','MIKOLAJKI');
INSERT INTO PORT (ID_PORT,NAZWA_PORTU,MIEJSCOWOSC)VALUES (7,'HOTEL','MIKOLAJKI');
select * from port;
select * from sternik;

INSERT INTO PRACOWNIK (ID_PRACOWNIKA, IMIE, NAZWISKO )VALUES (1, 'Kamil','Dabrowski');
INSERT INTO PRACOWNIK (ID_PRACOWNIKA, IMIE, NAZWISKO )VALUES (2, 'Leszek','Dabrowski');
INSERT INTO PRACOWNIK (ID_PRACOWNIKA, IMIE, NAZWISKO )VALUES (3, 'Marek','Filipiak');
INSERT INTO PRACOWNIK (ID_PRACOWNIKA, IMIE, NAZWISKO )VALUES (4, 'Piotr','Skorupski');
INSERT INTO PRACOWNIK (ID_PRACOWNIKA, IMIE, NAZWISKO )VALUES (5, 'Maciek','Zasada');

select * from pracownik ;

drop table jacht;

INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (1,'de332','2008-01-01','ANTILA',27,'DZIK',38,3,8,6,10, 'DEF2344',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (2,'fdde3','2015-01-01','TWISTER',28,'4REFY',40,3,8,6,5, 'frt4454',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (3,'ka123','2016-01-01','TANGO',30,'SZKFAL',45,4,10,8,15, 'spt456',2);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (4,'ggt345','2017-01-01','TES',32,'PIRAT',48,5,12,6,20, 'frr444',2);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (5,'frs654','2010-01-01','PHILA',29,'SZEKLA',36,3,8,6,5, 'frw4332',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (6,'drf655','2014-01-01','ANTILA',27,'NEPTUN',38,3,8,6,10, 'DEF2344',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (7,'cxy432','2013-01-01','ANTILA',27,'SZREK',38,3,8,6,10, 'nnG322',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (8,'DEF434','2013-01-01','ANTILA',27,'PINOKIO',38,3,8,6,10, 'DEF2344',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (9,'frd444','2010-01-01','TES',32,'BLUE',48,5,12,6,20, 'ndk223',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (10,'aaa123','2011-01-01','TES',32,'WICHER',48,5,12,6,20, 'ppo000',1);
INSERT INTO JACHT (ID_JACHTU,REJESTRACJA,ROK_PRODUKCJI,model,DLUGOSC,nazwa,POWIERZCHNIA_ZAGLI,LICZBA_KABIN,LICZBA_MAX_ZALOGI,LICZBA_KOMF_ZALOGI,MOC_SILINIKA, ubezpieczenie,ID_UPRAWNIENIA  )
VALUES (11,'vvv543','2012-01-01','TES',32,'KOT',48,5,12,6,20, 'ddd056',1);
select * from jacht;



alter session set nls_date_format = 'yyyy-mm-dd';

INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (1, '2015-07-07','2015-07-21', 1, 1);
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (3, '2015-07-21','2015-07-28', 10, 4);
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (4, '2015-06-21','2015-06-28', 5, 5);
                INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (5, '2015-06-21','2015-06-28', 5, 4);
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (2, '2016-07-07','2016-07-21', 2, 1);
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (6, '2017-07-07','2017-07-21', 3, 1);
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (7, '2016-07-07','2016-07-21', 4, 1);
                
SELECT* from REZERWACJA order by id_rezerwacji;

INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (1 , 1, 500, 100);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (2 , 2, 600, 0);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (3 , 3,400, 50);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (4 , 5, 700, 300);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (5 , 5, 500, 100);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (6 , 3, 800, 0);
INSERT INTO CZARTER (ID_REZERWACJI, ID_PRACOWNIKA, kaucja, ZNISZECZENIA_KWOTA) VALUES (7 , 4, 600, 200);

select* from czarter;

INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,1,'2015-07-07');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,2,'2015-07-09');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,3,'2015-07-11');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,4,'2015-07-14');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,5,'2015-07-15');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,4,'2015-07-17');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,6,'2015-07-18');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,3,'2015-07-20');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (1,1,'2015-07-21');

INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,1,'2016-07-21');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,3,'2016-07-22');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,4,'2016-07-24');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,6,'2016-07-25');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,3,'2016-07-27');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (2,1,'2016-07-28');

INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (3,1,'2015-07-21');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (3,3,'2015-07-23');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (3,5,'2015-07-25');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (3,2,'2015-07-26');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (3,1,'2015-07-28');

INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,1,'2015-06-21');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,3,'2015-06-22');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,4,'2015-06-23');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,7,'2015-06-24');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,3,'2015-06-25');
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,1,'2015-06-28');

select * from rejs;



