<<<<<<< HEAD
package db;

public class DBAction {

}
=======
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBAction {
	private static DBAction instance;
	private Connection conn;

	public DBAction() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 학원 사용
			conn = DriverManager.getConnection(
					"jdbc:mysql://192.168.0.48:3306/teamproject", "hr",
					"oracle");

		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public static DBAction getInstance() {
		if (instance == null)
			instance = new DBAction();
		return instance;
	}

	public Connection getConnection() {
		return conn;
	}

}
>>>>>>> refs/remotes/Mirmilcass/master
