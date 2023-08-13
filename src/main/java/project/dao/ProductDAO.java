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
	public List<Product> getAllProducts() throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();

			ps = conn.prepareStatement("Select * from product");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
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

			ps = conn.prepareStatement("Select * from product where category_id = ?");
			ps.setInt(1, categoryId);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
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

			ps = conn.prepareStatement("Select * from product where title like ?");
			ps.setString(1, "%" + text + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
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

			ps = conn.prepareStatement("Select * from product where id = ?");
			ps.setInt(1, productId);
			rs = ps.executeQuery();

			while (rs.next()) {

				String title = rs.getString(2);
				boolean lableIsNew = rs.getBoolean(3);
				double price = rs.getDouble(4);
				double discountedPrice = rs.getDouble(5);
				int categoryId = rs.getInt(6);
				int rating = rs.getInt(7);
				String description = rs.getString(8);
				String imageSrc1 = convertBlobToString(rs.getBlob("img1"));
				String imageSrc2 = convertBlobToString(rs.getBlob("img2"));
				String imageSrc3 = convertBlobToString(rs.getBlob("img3"));
				String imageSrc4 = convertBlobToString(rs.getBlob("img4"));
				String imageSrc5 = convertBlobToString(rs.getBlob("img5"));
				
				

				product = new Product(productId, title, lableIsNew, price, discountedPrice, categoryId, rating,
						description, imageSrc1, imageSrc2, imageSrc3, imageSrc4, imageSrc5);
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
	public String convertBlobToString(Blob blob) throws SQLException, IOException {
		
		InputStream inputStream = blob.getBinaryStream();
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[4096];
		int bytesRead = -1;

		while ((bytesRead = inputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
		}

		byte[] imageBytes = outputStream.toByteArray();
		String str = Base64.getEncoder().encodeToString(imageBytes);

		inputStream.close();
		outputStream.close();
		
		return str;
	}

	public List<Product> getProductsByPage(int pageIndex, int pageSize) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Product> list = new ArrayList<Product>();
		try {
			conn = DbUtil.makeConnection();
			String sql = "SELECT * FROM product LIMIT ?, ?;";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, (pageIndex - 1) * pageSize);
			ps.setInt(2, pageSize);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getDouble(4), rs.getDouble(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
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
