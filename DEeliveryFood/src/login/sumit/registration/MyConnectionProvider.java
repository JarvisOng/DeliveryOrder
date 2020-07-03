package login.sumit.registration;

import java.sql.Connection;
import java.sql.DriverManager;


public class MyConnectionProvider implements MyProvider {

	static Connection con=null;

	public static Connection getCon() {
		try {
			Class.forName("org.postgresql.Driver");
			con=DriverManager.getConnection(conUrl,username,password);
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
