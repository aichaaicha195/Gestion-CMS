/*create procedure [dbo].[Fonction_update]

      @Code_fonction varchar(03),
      @libell�_fonction varchar(50),
      @Atelier char(20),
      @Nature_risque char(20)

as

begin

update [dbo].[Fonction] 
set 
      
    [libell�_fonction] =@libell�_fonction, 
      [Atelier] =@Atelier ,
      [Nature_risque] =@Nature_risque 
      
      

	where Code_fonction= @Code_fonction


	end*/   
	exec Fonction_update '003','CHEF SERVICE','02','chemique'
	select* from Fonction