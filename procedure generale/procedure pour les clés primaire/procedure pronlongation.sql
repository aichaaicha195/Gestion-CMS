
/*CREATE procedure [prolongation_AC]
 
@Date_visite date,
@Code_congé varchar(10),
@ID_AT varchar(10)
AS
BEGIN
if not @ID_AT is null 
 begin
declare @compteur varchar(4) set @compteur=(select isnull(max(substring(Code_prolongation, 7,4)),0)+1 from  prolongation where substring(ID_AT, 2,5)=substring(@ID_AT,2,5))
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_P varchar(10) set @Code_P='P'+substring(@ID_AT,2,5)+@compteur
end
insert into prolongation
( 
[Code_prolongation],
[Date_visite] ,
[Code_congé] ,
[ID_AT]
)
values 
(
@Code_P,
@Date_visite,
@Code_congé,
@ID_AT
)


if not @Code_congé is null 
 begin
declare @compt varchar(4) set @compt=(select isnull(max(substring(Code_prolongation, 7,4)),0)+1 from  prolongation where substring(Code_congé, 2,5)=substring(@Code_congé,2,5))
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_Ps varchar(10) set @Code_Ps='P'+substring(@Code_congé,2,5)+@compteur

end

insert into prolongation
( 
[Code_prolongation],
[Date_visite] ,
[Code_congé] ,
[ID_AT]
)
values 
(
@Code_Ps,
@Date_visite,
@Code_congé,
@ID_AT
)

END */
EXEC prolongation_AC '01-02-2021','M202520001',null

select* from prolongation