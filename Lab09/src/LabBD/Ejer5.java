package LabBD;

import java.sql.*;

/**
 * Ejercicio 5
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer5 {
	
	public static void main(String[] args) {
		
		
		try {
			
			Connection conexion = DriverManager.getConnection("jdbc:oracle:thin:@vsids11.si.ehu.es:1521:gipuzkoa", "BDC23", "BDC23");
			
			Statement state = conexion.createStatement();
			
			//INSERT
			String insSQL1 = "INSERT INTO IDIOMA (DNI, Idioma) VALUES ('21212121', 'Italiano')";
			//UPDATE
			String insSQL2 = "UPDATE IDIOMA SET Idioma = 'Ingles' WHERE DNI = '21212121' AND Idioma = 'Italiano'";
			//DELETE
			String insSQL3 = "DELETE FROM IDIOMA WHERE DNI = '21212121'";
			
			state.executeUpdate(insSQL1);
			state.executeUpdate(insSQL2);
			state.executeUpdate(insSQL3);
			
			System.out.println("SE EJECUTA CORRECTAMENTE");
			
			
		}catch (SQLException e) {
			
			if (e.getErrorCode() == 1) {
				System.out.println("CHE, CÓMO OSAS DUPLICAR UNA TUPLA EXISTENTE ESO ES ILEGALISIMO");
			}
				
			e.printStackTrace();
		}
		
		
	}

}
