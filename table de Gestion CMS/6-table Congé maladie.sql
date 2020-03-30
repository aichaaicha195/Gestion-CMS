create table Congé_maladie(
Code_congé varchar(10) primary key,
Date_congé date,
Nbr_jour char(5),
Obs_congé char(20),
Date_reprise date,
Mat_emp varchar(5) foreign key references Employé(Mat_emp))
  