/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestioncms;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Aicha pc
 */
public class GestionCMS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         new AjouterEmployé().setVisible(true);
         new AjouterCandidat().setVisible(true);
         new AjouterCongé_maladie().setVisible(true);
         new AjouterAccident_travail().setVisible(true);
         new AjouterFonction().setVisible(true);
         new AjouterVisite_Medicale().setVisible(true);
         new AjouterType_Visite_Med().setVisible(true);
         new AjouterUnité_Fonctionnelle().setVisible(true);
    }
}
