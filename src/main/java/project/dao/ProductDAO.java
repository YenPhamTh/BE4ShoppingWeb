package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;

import project.model.Product;
import project.util.DbUtil;

public class ProductDAO {
	// function: public [dataType] [functionName](parameters){}
	private static final String SELECT_ALL_PRODUCT = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id";
	private static final String SELECT_ALL_PRODUCT_BY_CATEGORY = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id "
			+ "where category_id = ?";
	private static final String SELECT_ALL_PRODUCT_BY_SEARCH = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id "
			+ "where title like ?";
	private static final String SELECT_ALL_PRODUCT_BY_ID = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id where product.id = ?";
	private static final String SELECT_ALL_PRODUCT_BY_PRICE = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id "
			+ "having selling_price between 100 and 200";
	private static final String SELECT_ALL_PRODUCT_BY_PAGING = "SELECT *, if(discounted_price > 0, discounted_price, price) as selling_price "
			+ "FROM product JOIN category On product.category_id = category.id "
			+ "LIMIT ?, ?";
	
	public List<Product> getAllProducts() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement(SELECT_ALL_PRODUCT);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(18),
						rs.getString(16), rs.getInt(7), rs.getString(8), rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14)));
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

	public List<Product> getProductsByCate(int categoryId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement(SELECT_ALL_PRODUCT_BY_CATEGORY);
			ps.setInt(1, categoryId);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(18),
						rs.getString(16), rs.getInt(7), rs.getString(8), rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14)));
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

	public List<Product> getProductsByText(String text) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement(SELECT_ALL_PRODUCT_BY_SEARCH);
			ps.setString(1, "%" + text + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(18),
						rs.getString(16), rs.getInt(7), rs.getString(8), rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14)));
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

	public Product getProductsById(int productId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = null;
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement(SELECT_ALL_PRODUCT_BY_ID);
			ps.setInt(1, productId);
			rs = ps.executeQuery();

			while (rs.next()) {

				String title = rs.getString(2);
				boolean lableIsNew = rs.getBoolean(3);
				double price = rs.getDouble(4);
				double discountedPrice = rs.getDouble(18);
				String category = rs.getString(16);
				int rating = rs.getInt(7);
				String description = rs.getString(8);
				int collectionId = rs.getInt(9);
				String imageSrc1 = rs.getString(10);
				String imageSrc2 = rs.getString(11);
				String imageSrc3 = rs.getString(12);
				String imageSrc4 = rs.getString(13);
				String imageSrc5 = rs.getString(14);
				
				

				product = new Product(productId, title, lableIsNew, price, discountedPrice, category, rating,
						description, collectionId, imageSrc1, imageSrc2, imageSrc3, imageSrc4, imageSrc5);
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
		return product;
	}

	 //function to convert blob binary to string:
//	public String convertBlobToString(Blob blob) throws SQLException, IOException {
//		
//		InputStream inputStream = blob.getBinaryStream();
//		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//		byte[] buffer = new byte[4096];
//		int bytesRead = -1;
//
//		while ((bytesRead = inputStream.read(buffer)) != -1) {
//			outputStream.write(buffer, 0, bytesRead);
//		}
//
//		byte[] imageBytes = outputStream.toByteArray();
//		String str = Base64.getEncoder().encodeToString(imageBytes);
//
//		inputStream.close();
//		outputStream.close();
//		
//		return str;
//	}

	public List<Product> getProductsByPage(int pageIndex, int pageSize) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();
			ps = conn.prepareStatement(SELECT_ALL_PRODUCT_BY_PAGING);
			ps.setInt(1, (pageIndex - 1) * pageSize);
			ps.setInt(2, pageSize);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(18),
						rs.getString(16), rs.getInt(7), rs.getString(8), rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14)));
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
	
	public Product getProductsByPrice(int productId) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Product product = null;
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement(SELECT_ALL_PRODUCT_BY_PRICE);
			ps.setInt(1, productId);
			rs = ps.executeQuery();

			while (rs.next()) {

				String title = rs.getString(2);
				boolean lableIsNew = rs.getBoolean(3);
				double price = rs.getDouble(4);
				double discountedPrice = rs.getDouble(18);
				String category = rs.getString(16);
				int rating = rs.getInt(7);
				String description = rs.getString(8);
				int collectionId = rs.getInt(9);
				String imageSrc1 = rs.getString(10);
				String imageSrc2 = rs.getString(11);
				String imageSrc3 = rs.getString(12);
				String imageSrc4 = rs.getString(13);
				String imageSrc5 = rs.getString(14);
				
				

				product = new Product(productId, title, lableIsNew, price, discountedPrice, category, rating,
						description, collectionId, imageSrc1, imageSrc2, imageSrc3, imageSrc4, imageSrc5);
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
		return product;
	}
}
