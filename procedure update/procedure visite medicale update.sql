/*create procedure [dbo].[Visite_Medicale_update]
@Date_V date,
@ID_V varchar(10)            


as

begin

update [dbo].[Visite_Medicale] 
set 
                       
         [Date_V]=@Date_V
	where ID_V=@ID_V 

		 
 

 
end*/
exec Visite_Medicale_update '02-02-2020',''
select* from Visite_Medicale