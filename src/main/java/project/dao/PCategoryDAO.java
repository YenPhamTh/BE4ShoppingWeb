package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.model.PCategory;
import project.util.DbUtil;

public class PCategoryDAO {
	// function: public [dataType] [functionName](parameters){}
	public List<PCategory> getAllCategories() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<PCategory> list = new ArrayList<PCategory>();
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement("Select * from category");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new PCategory(rs.getInt(1), rs.getString(2)));
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
		return list;
	}
}