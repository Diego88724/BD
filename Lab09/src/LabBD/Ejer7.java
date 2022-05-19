package LabBD;

import java.sql.*;


/**
 * Ejercicio 7
 * @author Diego Fernandez y Asier Septien
 *
 */
public class Ejer7 {

	public static void main(String[] args) {
		
		Connection conexion = null;
		
		try {
			
			conexion = DriverManager.getConnection("jdbc:oracle:thin:@vsids11.si.ehu.es:1521:gipuzkoa", "BDC23", "BDC23");
			
			conexion.setAutoCommit(false); //tratar las instrucciones como bloques
			
			Statement state = conexion.createStatement();
			

			String insSQL2 = ("INSERT INTO viaje (SELECT Destino, add_months(FechaSalida, 12), Dias, CiudadSalida, DNI, PrecioDia FROM viaje WHERE FechaSalida BETWEEN '01-01-2022' AND '31-12-2022')");
			
			
			state.executeQuery(insSQL2);
			
			
			conexion.commit();
			
			System.out.println("FUNCIONA BIEN");
			
			
			
		}catch (Exception e) {
			
			System.out.println("No conecta");
			
			try {
				conexion.rollback();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			
			e.printStackTrace();
			
			
		}
		
		

	}

}
