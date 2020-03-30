create procedure [dbo].[Type_Visite_SP] 
          
@Designation_type_Visite varchar(20)
as

begin

declare @compteur varchar(4) set @compteur=(select isnull(max(substring(Code_type_Visite, 3,4)),0)+1 from Type_Visite_Medicale ) 
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_TV varchar(06) set @Code_TV='TV'+@compteur


insert into  Type_Visite_Medicale(
[Code_type_Visite],
[Designation_type_Visite]
)
values(

@Code_TV,
@Designation_type_Visite

)
END
/*exec Type_Visite_SP 'a la demande de travailleur'
select* from Type_visite*/