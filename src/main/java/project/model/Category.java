package project.model;

public class Category {

	private int id;
	private String name;
	private int countItems;
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Category(int id, String name, int countItems) {
		super();
		this.id = id;
		this.name = name;
		this.countItems = countItems;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setName(int countItems) {
		this.countItems = countItems;
	}
	public int getCountItems() {
		return countItems;
	}
	
}
