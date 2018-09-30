
-- klient wpada do naszego biura i prosi o jach od teraz do za tydzieñ
-- uatwiamy sobie procedura zycie wprowadzajac od teraz do koncza najmu rezerwacje
create or replace procedure dodaj_rezerwacje_odteraz
(dlugosc integer, nr_klienta integer, id_jachtu integer)
as 
id_max_rez int;
begin
select MAX(id_rezerwacji)+1 into id_max_rez from rezerwacja a;

dbms_output.put_line('zostala dodana rezerwacja!');
INSERT INTO REZERWACJA (ID_rezerwacji, DATAOD, DATADO, NR_KLIENTA, ID_JACHTU )
                VALUES (id_max_rez, SYSDATE,(SYSDATE +dlugosc), nr_klienta, id_jachtu);
                
end;

select * from rezerwacja;

call dodaj_rezerwacje_odteraz(7,1,1)

-- z powodu rodo usuwamy rekordy z pobytu klijenta w danych portach
create or replace procedure usuniecie_rezerwacji
(nr_k integer)
as 
K int;
CURSOR KURSOR IS SELECT ID_REZERWACJI FROM rejs where id_rezerwacji= (select rezerwacja.NR_KLIENTA from rezerwacja where rezerwacja.nr_klienta=nr_k);
BEGIN
  OPEN KURSOR;
  LOOP
      FETCH KURSOR INTO K;
        DELETE FROM rejs where ID_REZERWACJI=K;
        dbms_output.put_line('Informacje klienta o miejscach pobytu zostaly usuniete');
      
      EXIT WHEN KURSOR%NOTFOUND;
  END LOOP;
  CLOSE KURSOR;
END;

select * from rejs;
call usuniecie_rezerwacji(1);


