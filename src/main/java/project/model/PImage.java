package project.model;

public class PImage {
	private int id;
	private String src;
	private int productId;
	public PImage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PImage(int id, String src, int productId) {
		super();
		this.id = id;
		this.src = src;
		this.productId = productId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	
}
