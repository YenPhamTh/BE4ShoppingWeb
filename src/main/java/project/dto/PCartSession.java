package project.dto;

import java.util.HashSet;
import java.util.Set;

import project.model.PProduct;

public class PCartSession {
	private Set<PProduct> products;
	private double totalPrice;
	private int userId;
	
	
	public PCartSession() {
		this.products = new HashSet<PProduct>();
		
	}
	
	public Set<PProduct> getProducts() {
		return products;
	}
	public void setProducts(Set<PProduct> products) {
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
