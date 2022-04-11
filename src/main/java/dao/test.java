package dao;

import java.util.List;

import model.Product;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ListProductsDAO dao = new ListProductsDAO();
		List<Product> list = dao.getAllProducts();
		// List<Product> list = dao.search(iPhone);

		if (!list.isEmpty()) {
			for (Product o : list) {
				System.out.println(o.getName());

			}
		} else {
			System.out.println("nullllll");
		}
	}

}
