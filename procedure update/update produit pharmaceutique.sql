create procedure [dbo].[Produit_Pharma_up]

@Unit�_Mesure varchar(25),
@Date_premption date,
@Observation varchar (20), 
@Designation_produit varchar(30)
as

begin

update [dbo].[Produit_Pharmaceutique] 
set 


[Unit�_Mesure] =@Unit�_Mesure, 
[Date_premption]=@Date_premption, 
[Observation ]=@Observation  
 where Designation_produit=@Designation_produit
end
