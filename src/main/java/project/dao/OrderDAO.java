package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import project.dto.CartSession;
import project.dto.OrderItem;
import project.model.Product;
import project.util.DbUtil;

public class OrderDAO {
	public boolean addOrderWithItems(CartSession cart ) throws SQLException {

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DbUtil.makeConnection();
			// prevent auto-commit to database:
			conn.setAutoCommit(false);
			// insert order into database - id = auto generated
			String sql = "INSERT INTO `be4_final_project`.`order` (`user_id`, `total_price`) VALUES (?, ?);";
			ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			// set parameters
			ps.setInt(1, cart.getUserId());
			ps.setDouble(2, cart.getTotalPrice());

			// execute to insert each item in CART to database order detail
			ps.execute();
			rs = ps.getGeneratedKeys();
			if (rs.next()) {
				int orderId = rs.getInt(1);
				for(OrderItem orderItem : cart.getOrderItems()) {
					ps = conn.prepareStatement("INSERT INTO `be4_final_project`.`order_detail` "
							+ "(`order_id`, `product_id`, `price`, `quantity`) VALUES (?,?,?,?)");
				ps.setInt(1, orderId);
				ps.setInt(2, orderItem.getProduct().getId());
				ps.setDouble(3, orderItem.getProduct().getDiscountedPrice());
				ps.setInt(4, orderItem.getQuantity());
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
