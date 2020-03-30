/*create procedure [dbo].[Fournisseur_SP] 
          

@Nom_fournisseur varchar(20),
@Prenom_fournisseur varchar(20),
@Adresse_fournisseur varchar(30),
@Tel_fournisseur numeric(13)
as

begin

declare @compteur varchar(4) set @compteur=(select isnull(max(substring(ID_fournisseur, 3,4)),0)+1 from  Fournisseur) 
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @ID_F varchar(06) set @ID_F='F'+@compteur


insert into Fournisseur (
[ID_fournisseur] ,
[Nom_fournisseur] ,
[Prenom_fournisseur] ,
[Adresse_fournisseur] ,
[Tel_fournisseur] 
)
values(

@ID_F ,
@Nom_fournisseur ,
@Prenom_fournisseur,
@Adresse_fournisseur ,
@Tel_fournisseur 
)
END*/
exec Fournisseur_SP 'malki','mohamed','chlef','027251477'
select* from Fournisseur



