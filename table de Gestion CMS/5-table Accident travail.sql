create table Accident_travail( 
ID_AT varchar(10) primary key(ID_AT),                                
Date_AT date,           
Heure_AT time,                      
Date_reprise date,
Mat_emp varchar(5) foreign key references Employé(Mat_emp)
)