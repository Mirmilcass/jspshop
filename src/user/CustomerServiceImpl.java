package user;

import beans.customerBean;

public class CustomerServiceImpl implements CustomerService {

	private CustomerDao CustomerDao;

	public CustomerServiceImpl() {
		this.CustomerDao = new CustomerDaoImpl();
	}

	@Override
	public int idCheak(String id) {
		// TODO 회원 가입 ID 중복 검사
		return this.CustomerDao.idCheak(id);
	}

	@Override
	public String login(String id, String pw) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int customerInsert(String id, String pw, String mail, int tel,
			String addr, String name, String birth) {
		// TODO Auto-generated method stub
		customerBean customer = new customerBean();
		customer.setId(id);
		customer.setPassword(pw);
		customer.setMail(mail);
		customer.setTel(tel);
		customer.setAddress(addr);
		customer.setName(name);
		customer.setBirth(birth);
		return this.CustomerDao.customerInsert(customer);
	}

	@Override
	public int customerUpdate(String id, String pass, String name, String regist) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int customerDelete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
}
