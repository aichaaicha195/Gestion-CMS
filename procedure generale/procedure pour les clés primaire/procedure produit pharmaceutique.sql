

/*create procedure [dbo].[Produit_Pharma_SP] 
          
@Designation_produit varchar(30),
@Unité_Mesure varchar(25),
@Date_premption date,
@Observation varchar (20)
as

begin

declare @compteur varchar(4) set @compteur=(select isnull(max(substring(Code_produit, 3,4)),0)+1 from  Produit_Pharmaceutique) 
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_Pord varchar(06) set @Code_Pord='CP'+@compteur


insert into  Produit_Pharmaceutique(
[Code_produit],
[Designation_produit ],
[Unité_Mesure ],
[Date_premption ],
[Observation ]
)
values(

@Code_Pord,
@Designation_produit ,
@Unité_Mesure ,
@Date_premption ,
@Observation 

)
END*/
exec Produit_Pharma_SP 'Panadol','1 Boite','02-03-2020','disponible'
select* from Produit_Pharmaceutique
----delete Produit_Pharmaceutique



