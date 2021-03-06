package br.com.healthtrack.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import oracle.jdbc.pool.OracleDataSource;

/**
 * @author Luis Roberto Chiasso Rachope
 *
 * @version 4.2
 *
 */

public class ConexaoDB {

	private static ConexaoDB instance = null;
	private static Connection con;

	
	public static ConexaoDB getInstance() {
		if(instance == null) {
			instance = new ConexaoDB();
		}
		return instance;
	}

	public Connection getConnection() {

		try {
			if(con != null && !con.isClosed()) {
				return con;
			}
			
			OracleDataSource ods = new OracleDataSource();
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			con = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL", "DESAFIO02N01", "DESAFIO02");
			ods.setUser("DESAFIO02N01");
			ods.setPassword("DESAFIO02");
			ods.setServerName("oracle.fiap.com.br");
			ods.setPortNumber(1521);
			ods.setServiceName("ORCL");
			ods.setDriverType("thin");
			con = ods.getConnection();
		}catch (SQLException e) {
			e.printStackTrace();
		}

		return con;
	}

	public static void closeConnection(ResultSet rst) {
		try {
			rst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection(Statement pstmt) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection(PreparedStatement pstmt, ResultSet rst) {
		try {
			pstmt.close();
			rst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
