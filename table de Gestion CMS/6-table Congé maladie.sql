create table Cong�_maladie(
Code_cong� varchar(10) primary key,
Date_cong� date,
Nbr_jour char(5),
Obs_cong� char(20),
Date_reprise date,
Mat_emp varchar(5) foreign key references Employ�(Mat_emp))
  