package project.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {
	public static Connection makeConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/be4_final_project?useTimezone=true&serverTimezone=UTC", "123", "123");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		Connection conn = makeConnection();
		System.out.println(conn);
	}
}
