-- Dla ka¿dej ³ódki bêd¹cej d³u¿szej od 31 stóp zwiêksz moc silnika o 5 km, je¿eli jego moc przkeracza 15 km to zmieñ potrzebne uprawniena na 2
create procedure zeglarstwo  as
DECLARE KURSOR CURSOR FOR SELECT  moc_silinika, ID_JACHTU FROM jacht where dlugosc>31
DECLARE @DL INT, @SILNIK INT, @ID INT
OPEN KURSOR
FETCH NEXT FROM KURSOR INTO @silnik, @ID;
	WHILE @@FETCH_STATUS = 0
	BEGIN
			PRINT @ID
			SET @SILNIK =@SILNIK+5;
			UPDATE JACHT SET moc_silinika= @SILNIK WHERE ID_JACHTU=@ID
	
				 IF @SILNIK>15 begin
				UPDATE JACHT SET id_uprawnienia= 2 WHERE ID_JACHTU=@ID
				end
				FETCH NEXT FROM KURSOR INTO @silnik, @ID;
		END
			CLOSE kursor
			DEALLOCATE kursor

			drop procedure zeglarstwo

 exeCUTE zeglarstwo


select * from JACHT;

-- Dla jachtu ANTILA zmniejsz jego ¿agle o 10 je¿eli pow. ¿agli jest mniejsza od d³ugoœci ¿agli nie mzniejszaj jego powierzchni 

drop procedure zadanie2

create procedure zadanie2  as
DECLARE @pow INT, @dl INT, @ID INT
DECLARE KURSOR CURSOR FOR SELECT powierzchnia_zagli,dlugosc , ID_JACHTU FROM jacht WHERE model='ANTILA'
OPEN KURSOR
FETCH NEXT FROM KURSOR INTO @pow , @dl, @ID ;
	WHILE @@FETCH_STATUS = 0
	BEGIN 
			PRINT @ID
			SET @pow =@pow-10;
			begin TRANSACTION
			UPDATE JACHT SET powierzchnia_zagli= @pow WHERE ID_JACHTU=@ID
			
			if @pow<@dl 
			rollback TRANSACTION;
			else 
			commit TRANSACTION;
			
				
				FETCH NEXT FROM KURSOR INTO @pow , @dl, @ID ;
		END
			CLOSE kursor
			DEALLOCATE kursor

exeCUTE zadanie2


