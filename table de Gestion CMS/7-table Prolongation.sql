create table Prolongation(
Code_prolongation VARCHAR(10)primary key, 
Date_visite date,
Code_congé varchar(10)foreign key references Congé_maladie(Code_congé),
ID_AT varchar(10) foreign key references Accident_travail(ID_AT))