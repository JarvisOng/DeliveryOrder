package login.sumit.registration;

public interface CustomerDao {

	    public int insertCustomer(Customer c);
	    public Customer getCustomer(String username,String email, String password);

}
