/*create procedure [dbo].[Accident_travail_update]

           @Date_AT date,           
		   @Heure_AT time,       
		   @Date_visite date,               
		   @Date_reprise date, 
		   @ID_AT varchar(10)
		            
               
as

begin

update [dbo].[Accident_travail] 
set 
    [Date_AT]= @Date_AT ,           
	[Heure_AT] =@Heure_AT ,       
	[Date_visite]=@Date_visite ,               
	[Date_reprise]=@Date_reprise  
	where ID_AT=@ID_AT 

		 
 

 
end*/
exec Accident_travail_update '06-02-2020','13:00','01-02-2020','08-02-2020','A203400002'
select* from Accident_travail