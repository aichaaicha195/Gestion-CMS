/*create procedure [dbo].[Candidat_ND]


@Nom_candidat char(25),
@Prenom_candidat char(25),
@Date_Naiss_candidat date,
@Adresse_candidat varchar(10),
@Poste_travail_candidat char(50),
@Num_visite_Emb numeric(5),  
@Date_visite_Emb date,
@Resultat_Visite char(10)

as

begin
declare @compteur varchar(4) set @compteur=(select isnull(max(substring(ID_dossier,2,4)),0)+1 from Candidat)
if LEN (@compteur)=1 set @compteur='000'+@compteur
if LEN (@compteur)=2 set @compteur='00'+@compteur
if LEN (@compteur)=3 set @compteur='0'+ @compteur
declare @Code_C varchar(10) set @Code_c ='C'+@compteur


insert into [dbo].[Candidat] 

([ID_dossier], 
[Nom_candidat], 
[Prenom_candidat],
[Date_Naiss_candidat],
[Adresse_candidat],
[Post_travail_candidat],
[Num_visite_Emb],  
[Date_visite_Emb] ,
[Resultat_Visite])

 Values (
@Code_c,
@Nom_candidat, 
@Prenom_candidat,
@Date_Naiss_candidat,
@Adresse_candidat,
@Poste_travail_candidat,
@Num_visite_Emb,  
@Date_visite_Emb ,
@Resultat_Visite)


End*/
exec Candidat_ND 'FOUDAD ','MUSTAPHA ','1966-08-14','CHLEF','AGENT DE SECURITE','02','02-02-2020','apte'
select* from Candidat
----delete Candidat
