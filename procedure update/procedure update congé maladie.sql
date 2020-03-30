/*create procedure [dbo].[Congé_maladie_update]

@Date_congé date,
@Nbr_jour char(5),
@Obs_congé char(20),
@Date_visite date,
@Date_reprise date,
@code_conge varchar(10) 

as

begin

update [dbo].[Congé_maladie] 
set 


[Date_congé]=@Date_congé,
[Nbr_jour]=@Nbr_jour,
[Obs_congé]=@Obs_congé,
[Date_visite]=@Date_visite, 
[Date_reprise]=@Date_reprise
 where Code_congé=@code_conge
end*/
exec Congé_maladie_update '03-03-2020','20','fracture','04-04-2020','05-07-2020','M003200001'
select* from Congé_maladie