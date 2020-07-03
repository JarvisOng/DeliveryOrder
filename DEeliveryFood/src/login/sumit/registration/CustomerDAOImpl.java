package login.sumit.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAOImpl implements CustomerDao {

	static Connection con;
	static PreparedStatement ps;
	@Override
	public int insertCustomer(Customer c) {
		int status=0;
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("insert into customer values(?,?,?)");
			ps.setString(1, c.getUsername());
			ps.setString(2, c.getEmail());
			ps.setString(3, c.getPassword());
			status=ps.executeUpdate();
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Customer getCustomer(String username, String email, String password) {
		Customer c=new Customer();
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from customer where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2,  email);
			ps.setString(3, password);

			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c.setUsername(rs.getString(1));
				c.setEmail(rs.getString(2));
				c.setPassword(rs.getString(3));
			}

		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
