/*create procedure [dbo].[Cong�_maladie_update]

@Date_cong� date,
@Nbr_jour char(5),
@Obs_cong� char(20),
@Date_visite date,
@Date_reprise date,
@code_conge varchar(10) 

as

begin

update [dbo].[Cong�_maladie] 
set 


[Date_cong�]=@Date_cong�,
[Nbr_jour]=@Nbr_jour,
[Obs_cong�]=@Obs_cong�,
[Date_visite]=@Date_visite, 
[Date_reprise]=@Date_reprise
 where Code_cong�=@code_conge
end*/
exec Cong�_maladie_update '03-03-2020','20','fracture','04-04-2020','05-07-2020','M003200001'
select* from Cong�_maladie