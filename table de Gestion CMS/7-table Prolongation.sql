create table Prolongation(
Code_prolongation VARCHAR(10)primary key, 
Date_visite date,
Code_cong� varchar(10)foreign key references Cong�_maladie(Code_cong�),
ID_AT varchar(10) foreign key references Accident_travail(ID_AT))