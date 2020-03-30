/*create procedure [dbo].[Visite_Medicale_SP]
 
@Date_Visite_Med date,
@Mat_emp varchar(05),
@Code_type_Visite varchar(06),
@Code_congé varchar(10),
@ID_AT varchar(10)
AS
BEGIN
if not @ID_AT is null 
 begin
declare @compteur varchar(4) set @compteur=(select isnull(max(substring(ID_Visite_Med, 8,4)),0)+1 from  Visite_Medicale where substring(ID_AT, 2,5)=substring(@ID_AT,2,5))
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_VA varchar(10) set @Code_VA='VA'+@Mat_emp+substring(@ID_AT,2,5)+@compteur

insert into Visite_Medicale
( 
       [ID_Visite_Med], [Date_Visite_Med],[Mat_emp],[Code_type_Visite],[Code_congé] ,[ID_AT]
)
values 
(        @Code_VA,  @Date_Visite_Med ,@Mat_emp , @Code_type_Visite , @Code_congé, @ID_AT
)

end

if not @Code_congé is null 
 begin
declare @compt varchar(4) set @compt=(select isnull(max(substring(ID_Visite_Med, 8,4)),0)+1 from  Visite_Medicale where substring(@Code_congé,2,5)=substring(@Code_congé,2,5))
if LEN (@compt)=1 set @compt='000'+@compt
if LEN (@compt)=2 set @compt='00'+@compt
if LEN (@compt)=3 set @compt='0'+ @compt
declare @Code_VC varchar(10) set @Code_VC='VC'+@Mat_emp+substring(@Code_congé,2,5)+@compt



insert into Visite_Medicale
( 
   [ID_Visite_Med], [Date_Visite_Med],[Mat_emp],[Code_type_Visite],[Code_congé] ,[ID_AT]
)
values 
(
       @Code_VC,  @Date_Visite_Med ,@Mat_emp , @Code_type_Visite , @Code_congé, @ID_AT
)
end
END */
exec Visite_Medicale_SP    '02/04/2020','00320','TV0001', 'M002780001','A002880001'
select* from Visite_Medicale
