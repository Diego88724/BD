package LabBD;

import java.sql.*;

/**
 * Ejercicio 8
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer8 {

	public static void main(String[] args) {
		
		/**
		 * IMPORTANTE ESCRIBIR EN EL SGBD: (EN ESTE CASO MYSQL)
		 * 
		 * 1º PROCEDIMIENTO:
		 * 
		 * CREATE PROCEDURE MUESTRA_IDIOMAS() --NOMBRE
		 * 
		 * SELECT * FROM IDIOMA WHERE IDIOMA='Euskera' --EJECUCION
		 * 
		 * 
		 * 2º PROCEDIMIENTO:
		 * 
		 * CREATE PROCEDURE MUESTRA_PATXI() -- NOMBRE 
		 * 
		 * SELECT * FROM cliente WHERE nombre = 'Patxi Valverde' --EJECUCION
		 * 
		 * 
		 * 
		 */
		
		
		try {
			
			
			Connection conexion = DriverManager.getConnection("jdbc:mysql://dif-mysql.ehu.es:3306/DBC23?&useSSL=false", "DBC23", "DBC23");
			
			CallableStatement sentencia1 = conexion.prepareCall("{call MUESTRA_IDIOMAS}");
			
			CallableStatement sentencia2 = conexion.prepareCall("{call MUESTRA_PATXI}");
			
			
			ResultSet rs1 = sentencia1.executeQuery();
			
			ResultSet rs2 = sentencia2.executeQuery();
			
			System.out.println("IMPRIMIR PROCEDIMIENTO 1:");
			
			while (rs1.next()) {
				
				System.out.println(rs1.getString(1) + " " + rs1.getString(2));
				
			}
			
			rs1.close();
			
			System.out.println();
			System.out.println("IMPRIMIR PROCEDIMIENTO 2:");
			
			while (rs2.next()) {
				
				System.out.println(rs2.getString(1) + " " + rs2.getString(2) + " " + rs2.getString(3) + " " + rs2.getString(4) );
				
			}
			
			
			rs2.close();
			
			
			
			
			
			
		}catch (Exception e) {
			
			e.printStackTrace();
			
			
		}
		
		
		

	}

}
