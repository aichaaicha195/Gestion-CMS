/*create procedure [dbo].[Structure_update]

      @Code_structure varchar(3),
      @Designation_structure varchar(30)
as

begin

update [dbo].[Structure] 
set 
      

    [Designation_structure]=@Designation_structure
     
      
      

	where     Code_structure =@Code_structure 


	end   */
	exec Structure_update '001','BTC.MECANIQUE'
	select* from  Structure               