package LabBD;



import java.sql.*;


/**
 * Ejercicio 1
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer1 {

	public static void main(String[] args) {
		
		
		try {
			
			//1. CREAR CONEXION
			Connection conexion1 = DriverManager.getConnection("jdbc:mysql://dif-mysql.ehu.es:3306/DBC23?&useSSL=false", "DBC23", "DBC23");
			
			Connection conexion2 = DriverManager.getConnection("jdbc:oracle:thin:@vsids11.si.ehu.es:1521:gipuzkoa", "BDC23", "BDC23");
			
			//2. CREAR OBJETO STATEMENT
			
			Statement state1 = conexion1.createStatement();
			
			Statement state2 = conexion2.createStatement();
			
			//3. EJECUTAR SQL
			
			ResultSet result1 = state1.executeQuery("SELECT * FROM IDIOMA");
			
			ResultSet result2 = state2.executeQuery("SELECT * FROM GUIA");
			
			//4. LEER EL RESULTSET
			
			while (result1.next()) {
				
				System.out.println(result1.getString("DNI") + " " + result1.getString("Idioma"));
				
			}
			
			while (result2.next()) {
				
				System.out.println(result2.getString("DNI") + " " + result2.getString("Nombre") + " " + result2.getString("NTelefono"));
				
			}
			
			
			//5. CERRAMOS CONEXIONES Y LIBERAMOS MEMORIA
			
			result1.close();
			
			result2.close();
			
			
			
			
			
			
		} catch(Exception e) {
			
			System.out.println("No conecta");
			
			e.printStackTrace();
			
			
		}
		
		

	}

}
