/*create procedure [dbo].[Fonction_update]

      @Code_fonction varchar(03),
      @libellé_fonction varchar(50),
      @Atelier char(20),
      @Nature_risque char(20)

as

begin

update [dbo].[Fonction] 
set 
      
    [libellé_fonction] =@libellé_fonction, 
      [Atelier] =@Atelier ,
      [Nature_risque] =@Nature_risque 
      
      

	where Code_fonction= @Code_fonction


	end*/   
	exec Fonction_update '003','CHEF SERVICE','02','chemique'
	select* from Fonction