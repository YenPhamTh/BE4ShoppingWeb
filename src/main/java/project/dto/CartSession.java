package project.dto;

import java.util.HashSet;
import java.util.Set;

import project.model.Product;

public class CartSession {
	private Set<OrderItem> orderItems;
	private double totalPrice;
	private int userId;
	
	public CartSession() {
		this.orderItems = new HashSet<OrderItem>();
		
	}
	

	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
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
