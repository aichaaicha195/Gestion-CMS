create table Demande_achat(
Num_demande varchar(6) primary key,
date_demande date,
Num_Facture varchar(5),
Date_facture date,
ID_fournisseur varchar(5)foreign key references Fournisseur(ID_fournisseur),
Code_UF nvarchar (3) foreign key references Unit�_fonctionnelle (Code_UF),
Mat_emp varchar(5) foreign key references Employ�(Mat_emp))


