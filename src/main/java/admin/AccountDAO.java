package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import context.DBContext;

public class AccountDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public boolean login(String user, String pass) throws Exception {
		Connection conn = new DBContext().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "select count(*) as count from Account where user_mail=? and password=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, user);
		ps.setString(2, pass);

		rs = ps.executeQuery();
		int count = 0;

		if (rs.next()) {
			count = (rs.getInt("count"));
		}

		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}

	public void createAccount(String user, String pass, int accountRole, String userName, String userAddress,
			String userPhone) throws Exception {
		Connection conn = new DBContext().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "insert into account(user_mail,password, account_role, user_name, user_address, user_phone) values (?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setString(1, user);
		ps.setString(2, pass);
		ps.setInt(3, accountRole);
		ps.setString(4, userName);
		ps.setString(5, userAddress);
		ps.setString(6, userPhone);

		ps.execute();
		ps.close();
	}

	public boolean exists(String user) throws Exception {
		Connection conn = new DBContext().getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String sql = "select count(*) as count from Account where user_mail=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, user);
		rs = ps.executeQuery();

		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}

		if (count != 0) {
			return true;
		}
		return false;
	}
}
