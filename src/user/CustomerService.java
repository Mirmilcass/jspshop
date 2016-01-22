package user;

import beans.customerBean;

public interface CustomerService {

	String login(String id, String pw);
	int idCheak(String id);
	int customerInsert(String id, String pw, String mail, int tel, String addr,
			String name, String birth);
	int customerUpdate(String id, String pass, String name, String regist);
	int customerDelete(String id);
	/*
	UserBean findById(String id);
	Collection<UserBean> userList();*/
}
