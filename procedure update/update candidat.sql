create procedure Candidat_update


      @Nom_candidat char(25),
      @Prenom_candidat char(25),
      @Date_Naiss_candidat date,
      @Adresse_candidat varchar(20),
      @Poste_travail_candidat char(50),
      @Num_visite_emb
      @Date_visite_emb date,
      @Resultat_Visite char(10)
	  as
	   begin 

	  update Candidat
	  set

      [Nom_candidat]=@Nom_candidat,
      [Prenom_candidat]@=Prenom_candidat,
      [Date_Naiss_candiàdat]@=Date_Naiss_candidat,
      [Adresse_candidat]=@Adresse_candidat,
      [Poste_travail_candidat]=@Poste_travail_candidat,
      [Num_visite_emb]=@Num_visite_emb,
      [Date_visite_emb]=@Date_visite_emb,
      [Resultat_Visite]=@Resultat_Visite,
	  where ID_dossier= @ID_dossier
	  end