/*create procedure [dbo].[Prolongation_update]


@Date_visite date,
@Code_prolongation  varchar(10)


as

begin

update [dbo].[Prolongation] 
set 


[Date_visite]=@Date_visite

 where [Code_prolongation]=@Code_prolongation
end*/
exec Prolongation_update '02-08-2020','P002150002'
select* from Prolongation