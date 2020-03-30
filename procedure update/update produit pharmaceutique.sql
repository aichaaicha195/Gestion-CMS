create procedure [dbo].[Produit_Pharma_up]

@Unité_Mesure varchar(25),
@Date_premption date,
@Observation varchar (20), 
@Designation_produit varchar(30)
as

begin

update [dbo].[Produit_Pharmaceutique] 
set 


[Unité_Mesure] =@Unité_Mesure, 
[Date_premption]=@Date_premption, 
[Observation ]=@Observation  
 where Designation_produit=@Designation_produit
end
