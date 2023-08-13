package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import project.model.User;
import project.util.DbUtil;

public class RegisterDAO {

	public boolean registerAccount(User account) throws SQLException {
		// connect to DB
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			// make connection to mySQL
			conn = DbUtil.makeConnection();
			
			//--> table Category -->
			// Run query "Select * from category"
			ps = conn.prepareStatement("INSERT INTO `be4_final_project`.`account` (`user`, `email`, `password`) VALUES (?, ?, ?);");
			ps.setString(1, account.getName());
			ps.setString(2, account.getEmail());
			ps.setString(3, account.getPassword());
			
			// execute and get result SET
			ps.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if (ps !=null) {
				ps.close();
			}
			if (conn !=null) {
				conn.close();
			}
		}
		return true;
	}
}