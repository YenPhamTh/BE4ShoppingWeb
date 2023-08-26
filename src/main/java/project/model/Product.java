package project.model;

import java.util.Objects;

public class Product {
	private int id;
	private String title;
	private boolean lableIsNew;
	private double price;
	private double discountedPrice;
	private String category;
	private int rating;
	private String description;
	private int collectionId;
	private String imageSrc1;
	private String imageSrc2;
	private String imageSrc3;
	private String imageSrc4;
	private String imageSrc5;
	private String detail;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Product(int id, String title, boolean lableIsNew, double price, double discountedPrice, String category,
			int rating, String description, int collectionId, String imageSrc1, String imageSrc2, String imageSrc3, String imageSrc4,
			String imageSrc5) {
		super();
		this.id = id;
		this.title = title;
		this.lableIsNew = lableIsNew;
		this.price = price;
		this.discountedPrice = discountedPrice;
		this.category = category;
		this.rating = rating;
		this.description = description;
		this.collectionId = collectionId;
		this.imageSrc1 = imageSrc1;
		this.imageSrc2 = imageSrc2;
		this.imageSrc3 = imageSrc3;
		this.imageSrc4 = imageSrc4;
		this.imageSrc5 = imageSrc5;
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


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
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


	public String getImageSrc1() {
		return imageSrc1;
	}


	public void setImageSrc1(String imageSrc1) {
		this.imageSrc1 = imageSrc1;
	}


	public String getImageSrc2() {
		return imageSrc2;
	}


	public void setImageSrc2(String imageSrc2) {
		this.imageSrc2 = imageSrc2;
	}


	public String getImageSrc3() {
		return imageSrc3;
	}


	public void setImageSrc3(String imageSrc3) {
		this.imageSrc3 = imageSrc3;
	}


	public String getImageSrc4() {
		return imageSrc4;
	}


	public void setImageSrc4(String imageSrc4) {
		this.imageSrc4 = imageSrc4;
	}


	public String getImageSrc5() {
		return imageSrc5;
	}


	public void setImageSrc5(String imageSrc5) {
		this.imageSrc5 = imageSrc5;
	}


	@Override
	public int hashCode() {
		return Objects.hash(id, title, lableIsNew, price, discountedPrice, category,
				rating, description, collectionId, imageSrc1, imageSrc2, imageSrc3, imageSrc4,
				imageSrc5);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return category == other.category;
	}
	
}
