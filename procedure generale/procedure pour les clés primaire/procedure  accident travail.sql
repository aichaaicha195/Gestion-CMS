
/*create PROCEDURE [dbo].[Accident_travail_INSERT]
                                           
           
           @Date_AT date,           
		   @Heure_AT time,       
		   @Date_visite date,               
		   @Date_reprise date  ,
		   @matri1 varchar(5)         
               
AS


BEGIN
declare @compteur varchar(4) set @compteur= (select isnull(max(substring(ID_AT,7,4)),0)+1 from Accident_travail where  Mat_emp=@matri1)
--if LEN(@compteur)=0 set @compteur='000'+@compteur
if LEN(@compteur)=1 set @compteur='000'+@compteur
if LEN(@compteur)=2 set @compteur='00'+@compteur
if LEN(@compteur)=3 set @compteur='0'+@compteur

declare @code_at varchar(10) set @code_at='A'+@matri1+@compteur

	
		INSERT INTO [dbo].[Accident_travail]
           ([ID_AT]                  ,[Date_AT]           ,[Heure_AT]           ,[Date_visite]           ,[Date_reprise] , Mat_emp         
           
           )
     VALUES
     ( 
           @code_at,                  @Date_AT,           @Heure_AT,           @Date_visite,           @Date_reprise, @matri1
            )              
            
END*/
     



exec Accident_travail_INSERT    '10/02/2020' , '08:00:25', '02/02/2020', '03/26/2020','00288'

select * from Accident_travail

--delete Accident_travail 
---GO


