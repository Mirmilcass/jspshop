package user;

import beans.customerBean;

public interface CustomerDao {

	String login(String id, String pw);
	int idCheak(String id);
	int customerInsert(customerBean customer);
	int customerUpdate(customerBean customer);
	int customerDelete(String id);

}
