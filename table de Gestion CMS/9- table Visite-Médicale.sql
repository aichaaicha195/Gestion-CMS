create table Visite_Medicale(
ID_Visite_Med varchar(10) primary key (ID_Visite_Med),            
Date_Visite_Med date,
Code_type_Visite varchar(06) foreign key references Type_Visite_Medicale(Code_type_Visite),
Mat_emp varchar(05) foreign key references Employ�(Mat_emp),
Code_cong� varchar(10)foreign key references Cong�_maladie (Code_cong�),
ID_AT varchar(10)foreign key references Accident_travail (ID_AT))           