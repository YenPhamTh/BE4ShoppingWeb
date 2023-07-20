package project.model;

import java.util.Objects;

public class PProduct {
	private int id;
	private String title;
	private boolean lableIsNew;
	private double price;
	private double discountedPrice;
	private int categoryId;
	private int rating;
	private String description;
	private String imageSrc;
	public PProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PProduct(int id, String title, boolean lableIsNew, double price, double discountedPrice, int categoryId,
			int rating, String description, String imageSrc ) {
		super();
		this.id = id;
		this.title = title;
		this.lableIsNew = lableIsNew;
		this.price = price;
		this.discountedPrice = discountedPrice;
		this.categoryId = categoryId;
		this.rating = rating;
		this.description = description;
		this.imageSrc = imageSrc;
	}
	public String getImageSrc() {
		return imageSrc;
	}
	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public boolean isLableIsNew() {
		return lableIsNew;
	}
	public void setLableIsNew(boolean lableIsNew) {
		this.lableIsNew = lableIsNew;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscountedPrice() {
		return discountedPrice;
	}
	public void setDiscountedPrice(double discountedPrice) {
		this.discountedPrice = discountedPrice;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public int hashCode() {
		return Objects.hash(categoryId, description, discountedPrice, id, imageSrc, lableIsNew, price, rating, title);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PProduct other = (PProduct) obj;
		return categoryId == other.categoryId;
	}
	
}
