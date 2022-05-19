package LabBD;

import java.sql.*;
import java.util.Scanner;


/**
 * Ejercicio 3
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer3 {

	public static void main(String[] args) {
		
		
		try {
			
			Connection conexion1 = DriverManager.getConnection("jdbc:mysql://dif-mysql.ehu.es:3306/DBC23?&useSSL=false", "DBC23", "DBC23");
			
			PreparedStatement sentencia = conexion1.prepareStatement("SELECT * FROM CLIENTE WHERE DNI = ? AND NTELEFONO = ?");
			
			Scanner sc = new Scanner(System.in);
			System.out.println("INTRODUCE LOS DATOS DEL DNI: ");
			String dni = sc.nextLine();
			System.out.println("INTRODUCE LOS DATOS DEL NUMERO DE TELEFONO: ");
			String ntelefono = sc.nextLine();
			
			sc.close();
			
			sentencia.setString(1, dni);
			sentencia.setString(2, ntelefono);
			ResultSet res = sentencia.executeQuery();
			
			while(res.next()) {
				
				System.out.println(res.getString(1) + " " + res.getString(2) + " " + res.getString(3) + " " + res.getString(4));
				
				
			}
			
			res.close();
			
			
			
		}catch (Exception e) {
			System.out.println("No conecta");
			e.printStackTrace();
			
		}
		

	}

}
