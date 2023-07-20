package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import project.dto.PCartSession;
import project.model.PProduct;
import project.util.DbUtil;

public class POrderDAO {
	public boolean addOrderWithItems(PCartSession cart ) throws SQLException {

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DbUtil.makeConnection();
			// prevent auto-commit to database:
			conn.setAutoCommit(false);
			// insert order into database - id = auto generated
			String sql = "INSERT INTO `be4furniture`.`order` (`userId`, `totalPrice`) VALUES (?, ?);";
			ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			// set parameters
			ps.setInt(1, cart.getUserId());
			ps.setDouble(2, cart.getTotalPrice());

			// execute to insert each item in CART to database order detail
			ps.execute();
			rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int orderId = rs.getInt(1);
				for(PProduct product : cart.getProducts()) {
					ps = conn.prepareStatement("INSERT INTO `be4furniture`.`order_detail` "
							+ "(`orderId`, `productId`, `price`) VALUES (?,?,?)");
				ps.setInt(1, orderId);
				ps.setInt(2, product.getId());
				ps.setDouble(3, product.getDiscountedPrice());
				ps.execute();
				}
			}
			// commit all infor in 1 "transaction"
			conn.commit();
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			conn.rollback();
			return false;
		} finally {
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
	}
}
