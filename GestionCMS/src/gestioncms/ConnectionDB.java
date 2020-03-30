/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestioncms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Aicha pc
 */
public class ConnectionDB{
             public static Connection conx ;
             public static Statement sta;
             public static ResultSet res;
             public ConnectionDB(){connectt();}
             
    static void  connectt(){
            try {
			Class.forName ("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Driver O.K.");
 
			String url = "jdbc:sqlserver://localhost:1433;databaseName=Gestion_CMS";
			String user = "gerer";
			String passwd = "aichaaicha";
 
			conx = DriverManager.getConnection(url, user, passwd);
			System.out.println("Connection effective");
 
		} catch (Exception e){
			e.printStackTrace();
			}
    }

    
}

