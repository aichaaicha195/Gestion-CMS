create FUNCTION [dbo].[Increment]  ( @mois int )
RETURNS char(4)
AS
BEGIN
  DECLARE @Resultat   char(4)
   
 if LEN(@mois)=4 set @Resultat=cast(@mois as char(4))
if LEN(@mois)=1 set @Resultat='000'+cast(@mois  as char(4))
if LEN(@mois)=2 set @Resultat='00'+cast(@mois as char(4))
if LEN(@mois)=3 set @Resultat='0'+cast(@mois as char(4))
    
   RETURN(@Resultat)
END
