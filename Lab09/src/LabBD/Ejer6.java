package LabBD;

import java.sql.*;


/**
 * Ejercicio 6
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer6 {

	public static void main(String[] args) {
		

		try {
		
			Connection conexion1 = DriverManager.getConnection("jdbc:mysql://dif-mysql.ehu.es:3306/DBC23?&useSSL=false", "DBC23", "DBC23");
			
			Connection conexion2 = DriverManager.getConnection("jdbc:oracle:thin:@vsids11.si.ehu.es:1521:gipuzkoa", "BDC23", "BDC23");
			
			
			Statement state1 = conexion1.createStatement();
			
			PreparedStatement sentencia2 = conexion2.prepareStatement("SELECT * FROM CLIENTE WHERE DNI = 10000001");
		
			ResultSet res = sentencia2.executeQuery();
			
			String insSQL1 = "";
			
			while(res.next()) {
				
				System.out.println(res.getString(1) + " " + res.getString(2) + " " + res.getString(3)
				+ " " + res.getString(4));
				
				insSQL1 = "INSERT INTO guia (DNI, Nombre, NTelefono) VALUES ('"
						+ res.getString(1)  + "', '" + res.getString(2) + "', '" + res.getString(4) + "')";
				
			}
			
			
			state1.executeUpdate(insSQL1);
			
			
			res.close();
			
			
		}catch (Exception e) {
			System.out.println("No conecta");
			e.printStackTrace();
			
		}
		
		
		
		
	}

}
