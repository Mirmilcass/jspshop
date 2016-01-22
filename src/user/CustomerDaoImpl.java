package user;

/**
 회원 가입 DB

 idCheak(String id) - ID 중복 검사
 customerInsert(customerBean customer) - 가입
 customerUpdate(customerBean customer) - 수정
 customerDelete(String id) - 삭제

 <Resource auth="ConTainer" driverClassName="com.mysql.jdbc.Driver"
 maxIdle="30" maxTotal="100" maxWaitMillis="10000" name="JDBC/mysql"
 type="javax.sql.DataSource" url="jdbc:mysql://192.168.0.48:3306/teamproject"
 username="hr" password="oracle" />

 */

import java.sql.*;

import db.DBAction;

import beans.customerBean;
import beans.MyCalendar;

public class CustomerDaoImpl implements CustomerDao {

	@Override
	public int idCheak(String id) {
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select id from customer where id=?";

		int result = -1;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (!rs.next()) {
				result = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}

	@Override
	public String login(String id, String pw) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int customerInsert(customerBean customer) {
		// TODO 가입
		Connection conn = DBAction.getInstance().getConnection();
		PreparedStatement pstmt = null;
		MyCalendar myCal = new MyCalendar();

		String sql = "insert into customer(id,pw,mail,tel,address,name,birth,joindate) values(?,?,?,?,?,?,?)";

		int result = -1;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, customer.getId());
			pstmt.setString(2, customer.getPassword());
			pstmt.setString(3, customer.getMail());
			pstmt.setInt(4, customer.getTel());
			pstmt.setString(5, customer.getAddress());
			pstmt.setString(6, customer.getName());
			pstmt.setString(7, customer.getBirth());
			pstmt.setString(8, myCal.getToday());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
	@Override
	public int customerUpdate(customerBean customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int customerDelete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
