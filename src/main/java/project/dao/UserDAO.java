package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import project.model.User;
import project.util.DbUtil;

public class UserDAO {
	// function: public [dataType] [functionName](parameters){}
	public User getUserByEmailPassword(String email, String password) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement("Select * from account where email = ? AND password = ? ");
			ps.setString(1,email );
			ps.setString(2,password );
			rs = ps.executeQuery();

			while (rs.next()) {
				user = new User(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return user;
	}
}
