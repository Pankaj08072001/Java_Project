package Com.traning.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DButil {
	private static final String driverClassName = "com.mysql.cj.jdbc.Driver";
	private static final String url = "jdbc:mysql:/// IDPassword";
	private static final String userName = "root";
	private static final String password = "12345";

	static {
		try {
			Class.forName(driverClassName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, userName, password);
	}

}
