package LabBD;


import java.sql.*;


/**
 * Ejercicio 2
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer2 {
	
	public static void main(String[] args) {
		
		
		try {
			
			Connection conexion1 = DriverManager.getConnection("jdbc:mysql://dif-mysql.ehu.es:3306/DBC23?&useSSL=false", "DBC23", "DBC23");
			
			PreparedStatement sentencia = conexion1.prepareStatement("SELECT * FROM CLIENTE WHERE  DNI = ?");
			
			sentencia.setString(1, "10000001");
			
			
			ResultSet res1 = sentencia.executeQuery();
			
			while(res1.next()) {
				
				System.out.println(res1.getString(1) + " " + res1.getString(2) + " " + res1.getString(3) + " " + res1.getString(4));
				
				
			}
			
			System.out.println();
			
			sentencia.setString(1, "10000004");
			
			
			ResultSet res2 = sentencia.executeQuery();
			
			while (res2.next()) {
				
				System.out.println(res2.getString(1) + " " + res2.getString(2) + " " + res2.getString(3) + " " + res2.getString(4));
				
			}
			
			
			res1.close();
			res2.close();
			
			
		} catch(Exception e) {
			System.out.println("No conecta");
			e.printStackTrace();
			
		}
		
		
	}
	
	
	
	


}
