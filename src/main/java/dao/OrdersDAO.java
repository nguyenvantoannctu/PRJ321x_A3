package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;

import context.DBContext;
import model.Cart;
import model.Orders;
import model.Product;

public class OrdersDAO {
	public void insertOrder(Orders o, Cart c) throws Exception {
		List<Product> items;
		LocalDate currentdate = LocalDate.now();
		try {
			Connection conn = new DBContext().getConnection();
			String sqla = " insert into ShoppingDB.dbo.Orders (user_mail, order_status, order_date, order_discount_code, order_address)"
					+ "values ('" + o.getUserMail() + "'," + o.getStatus() + ",'" + currentdate + "','"
					+ o.getDiscount() + "','" + o.getAddress() + "') ";

			String sqlb = "";
			double total = c.getAmount();
			items = c.getItems();
			int size = items.size();
			 for(int j = 0; j < size; j++){
	                Product i = items.get(j);
	                if(j==0){
	                    sqlb +=" insert into ShoppingDB.dbo.Orders_detail (order_id, product_id, amount_product, price_product, number_product)"
	                        + "values (scope_identity(),"+i.getId()+","+total+","+i.getPrice()+ "," + i.getNumber() + ") ";
	                } else {
	                    sqlb += ",(scope_identity(),"+i.getId()+","+total+","+i.getPrice()+ "," + i.getNumber() + ")";
	                }
	            }
			String sqlc = sqla + sqlb;
			PreparedStatement ps = conn.prepareStatement(sqlc);
			ps.execute();
			ps.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		List<Product> items = new ArrayList<Product>();
		Product a = new Product(1,"name","description",2,"string","string","string",2);
		Product b = new Product(2,"name","description",2,"string","string","string",2);
		Product d = new Product(3,"name","description",2,"string","string","string",2);
		Cart c = new Cart();
		c.add(a);
		c.add(b);
		c.add(d);
		items = c.getItems();
		if(items == null) {
			System.out.println("null");
		}else {
			System.out.println("co");
		}
	}
}
