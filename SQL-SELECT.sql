--WHERE

 -- wypisz rezerwacje po 2016 roku
select * from rezerwacja where dataod>'2016-01-01'; 
-- wypisz sterników z patentem morskim
select * from sternik where ID_UPRAWNIENIA>1;
-- wypisz czartery w których zostala zwrocona pelna kaucja
select * from czarter where ZNISZECZENIA_KWOTA=0;
-- wypisz sterników majacych wiecej ni¿ 28 lat
select * from sternik where DOWOD_TOZSAMOSCI<='9000000000';
-- wypisz jachty z roku produkcji 2010 lub starsze
select * from jacht where ROK_PRODUKCJI <='2010-01-01';

-- laczenie tablic

-- ile razy pracownik wyda i odebral jacht
select imie, count(1) "wydanie i odbior jachtu" from pracownik join czarter on pracownik.ID_PRACOWNIKA=CZARTER.ID_PRACOWNIKA group by imie;
-- ile razy w jakim porcie zawitala jacht z naszej floty
select nazwa_portu, count(1)"liczba wizyt w danym porcie" from port join rejs on port.ID_PORT=rejs.ID_PORT group by port.NAZWA_PORTU;
-- ile razy dany klient zarezerwowal jacht
select sternik.nr_klienta, count(1) "ilosc rezerwacji" from sternik join rezerwacja on sternik.NR_KLIENTA=rezerwacja.NR_KLIENTA group by sternik.NR_KLIENTA;
-- ile razy dany jach by rezerwowany
select jacht.nazwa, count(1)"ilosc rezerwacji na dany jacht" from jacht join rezerwacja on jacht.ID_JACHTU=rezerwacja.ID_JACHTU group by jacht.nazwa;
--  liczba wypozyczen z patentem morkim
select jacht.nazwa, count(1)"wyp. z patentem morskim" from jacht join rezerwacja on jacht.id_jachtu=rezerwacja.ID_JACHTU where JACHT.ID_UPRAWNIENIA=2 group by jacht.nazwa ;

--group by + 2 having

-- wyswietl liczbê jachtów z kabinami powy¿ej 3
select count(nazwa)"liczba jachtów", liczba_kabin from jacht group by liczba_kabin having liczba_kabin>3;
-- wyswietl liczbê rezerwacji w latach powy¿ej 2016 wlacznie 
select count(1), Extract(YEAR from dataod)" rok rezerwacji" from rezerwacja group by Extract(YEAR from dataod) having Extract(YEAR from dataod)>=2016;
-- wyswietl ile zostao potraconej lacznie kaucji po jej wysokosci i ile razy byly Zniszczenia
select kaucja, sum(KAUCJA-ZNISZECZENIA_KWOTA)"cena kosztow naprawy", count(1)"liczba zniszczen" from czarter where KAUCJA!=0 group by KAUCJA;
--wyswietl liczbê postoi w portach dla danego rejsu 
select  id_rezerwacji, count(1) from rejs group by ID_REZERWACJI;
--wypisz jachty po maksymalnej liczbie zaogi i ile ich jest
select liczba_max_zalogi, count(1) from jacht group by LICZBA_MAX_ZALOGI; 

