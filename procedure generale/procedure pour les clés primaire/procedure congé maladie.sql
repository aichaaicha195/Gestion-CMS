

/*create procedure [dbo].[Congé_maladie_insert]

@Date_congé date,
@Nbr_jour char(5),
@Obs_congé char(20),
@Date_visite date,
@Date_reprise date,
@Mat_emp varchar(5) 

as

begin
declare @compteur varchar(4) set @compteur=(select isnull(max(substring(Code_congé,8,4)),0)+1 from Congé_maladie where Mat_emp=@Mat_emp)
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_CM varchar(10) set @Code_CM ='M'+@Mat_emp+@compteur





insert into [dbo].[Congé_maladie] 

([Code_congé],
[Date_congé],
[Nbr_jour],
[Obs_congé],
[Date_visite], 
[Date_reprise],
[Mat_emp]

)

 Values (
@Code_CM,
@Date_congé,
@Nbr_jour,
@Obs_congé,
@Date_visite, 
@Date_reprise,
@Mat_emp 
)

End*/
exec Congé_maladie_insert '02/09/2020','60','brules','04/05/2020','05/06/2020','00320'
select* from Congé_maladie