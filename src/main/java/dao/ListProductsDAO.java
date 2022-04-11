package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ListProductsDAO {
	Connection conn = null; // ket noi toi sql
	PreparedStatement ps = null; // truy van query tu netbeans sang sql
	ResultSet rs = null; // nhan ket qua tra ve.
	
	
	public List<Product> getAllProducts() {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from Products";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pc = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),rs.getString(6), rs.getString(7));
				list.add(pc);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Product>search(String characters){
		List<Product> list = new ArrayList<>();
		try {
			String query = "select * from Products where product_name like ?";
			conn = new DBContext().getConnection(); // mo ket noi toi sql server;
			ps = conn.prepareStatement(query); // chuyen cau lenh qua sql server
			ps.setString(1, "%" + characters + "%");
			rs = ps.executeQuery(); //exercuse query va get data
			while(rs.next()) {
				Product pc = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),rs.getString(6), rs.getString(7));
				list.add(pc);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Product getProductByID(String id) {
		String query = "select * from products where product_id = ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Product pc = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),rs.getString(6), rs.getString(7));
				return pc;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
