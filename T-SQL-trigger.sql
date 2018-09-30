--1
-- Spradzamy czy sternik ma dobre uprawnienia
CREATE TRIGGER wyzwalaczv5
ON sternik
FOR INSERT
AS
DECLARE @uprawnienia int ;
select @uprawnienia=ID_UPRAWNIENIA from inserted
if (@uprawnienia=0 )
begin 
	rollback
	RAISERROR('Sternik siê nie nadaje, nie ma uprawnieñ',1,2)
end

drop trigger wyzwalaczv5

INSERT INTO STERNIK(NR_KLIENTA,NR_PATENTU,NR_TELEFONU,DOWOD_TOZSAMOSCI,ID_UPRAWNIENIA)VALUES (96,'101010','1010101010','20092239451',0);

--2
-- Prosimy klienta o dane w jakim porcie bêzie nocowaæ i gdzie i kiedy. Na ka¿dy port mamy po 3 rezerwacje 
-- Je¿eli przekrocz¹ liczbê rezerwacji (nie ma miejsc zarezerwowanych dla nas) to porsimy o pop³yniecie w inne mijsce
CREATE TRIGGER portt
ON rejs
FOR INSERT
AS
DECLARE @idportu int, @data_nocowania varchar(20), @ile int;
select @idportu=id_port, @data_nocowania=DATA_NOCOWANIA from inserted
set @ile = (select count(*) from rejs where DATA_NOCOWANIA=@data_nocowania and id_port=@idportu)
if (@ile>=3)
begin 
	rollback
	RAISERROR('Za du¿o ³ódek w jednym porcie od tej samej firmy Skoñczy³y siê rezerwacje',1,2)
end

drop trigger portt
INSERT INTO REJS (ID_REZERWACJI, ID_PORT, DATA_NOCOWANIA) VALUES (4,1,'2015-07-21');

