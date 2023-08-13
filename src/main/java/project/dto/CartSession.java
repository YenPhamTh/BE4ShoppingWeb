package project.dto;

import java.util.HashSet;
import java.util.Set;

import project.model.Product;

public class CartSession {
	private Set<Product> products;
	private double totalPrice;
	private int userId;
	
	
	public CartSession() {
		this.products = new HashSet<Product>();
		
	}
	
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
}
