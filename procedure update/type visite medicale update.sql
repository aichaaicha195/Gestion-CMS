/*create procedure [dbo].[Type_visite_update]

@Code_type_V VARCHAR(06),
@Designation_type_V varchar(20)
as

begin

update [dbo].[Type_visite] 
set 

[Designation_type_V]=@Designation_type_V 

	where  Code_type_V= @Code_type_V 

		 
 

 
end*/
exec Type_visite_update 'TV0001','Spontanée'
select * from Type_visite