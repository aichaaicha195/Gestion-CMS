/*create procedure [dbo].[Visite_Medicale_update]

@Date_V date
as

begin

update [dbo].[Visite_Medicale] 
set 

[Date_V]=@Date_V
 

 where ID_V= @ID_V
end*/
exec Visite_Medicale_update '2020-03-04','V004000001'
select* from Visite_Medicale