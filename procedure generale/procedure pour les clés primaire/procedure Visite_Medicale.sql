/*create procedure Visite_Medicale_SP           
@Date_Visite_Med date,
@Mat_emp varchar(05),
@Code_type_Visite varchar(06),
@Code_congé varchar(10),
@ID_AT varchar(10)
as

begin
declare @compteur varchar(4) set @compteur=(select isnull(max(substring(ID_Visite_Med, 8,4)),0)+1 from  Visite_Medicale where Mat_emp=@Mat_emp)
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_V varchar(10) set @Code_V='V'+@Mat_emp+@compteur


insert into  Visite_Medicale(
       [ID_Visite_Med], [Date_Visite_Med], [Code_type_Visite],[Mat_emp],Code_congé,ID_AT
	   )
	                                                                   

values ( @Code_V,     @Date_Visite_Med , @Code_type_Visite, @Mat_emp  , @Code_congé,@ID_AT     
)

END*/
exec Visite_Medicale_SP    '02/04/2020','TV0001', '20243','M002780001','A002150001'
select* from Visite_Medicale